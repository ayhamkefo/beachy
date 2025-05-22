import 'package:beachy/features/home/domain/entities/apartment_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/usecases/get_apartments_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetApartmentsUseCase _getApartmentsUseCase;

  HomeBloc(this._getApartmentsUseCase) : super(const HomeState()) {
    on<FetchApartments>(_fetchApartments);
    on<ResetPagination>(_resetPagination);
  }

  Future<void> _fetchApartments(
    FetchApartments event,
    Emitter<HomeState> emit,
  ) async {
    if (state.hasReachedMax || state.status == HomeStatus.loading) return;
    try {
      emit(state.copyWith(
        status: HomeStatus.loading,
        apartments: state.apartments,
      ));
      final nextPage = state.currentPage + 1;
      final result = await _getApartmentsUseCase.call(page: nextPage);
      result.fold(
        (failure) => emit(state.copyWith(
          status: HomeStatus.failure,
          errorMessage: failure.message,
        )),
        (data) {
          final newApartments = [...state.apartments, ...data.apartments.data];
          final hasReachedMax = !data.apartments.meta.hasMorePages;
          emit(state.copyWith(
            status: HomeStatus.success,
            apartments: newApartments,
            hasReachedMax: hasReachedMax,
            currentPage: nextPage,
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void _resetPagination(ResetPagination event, Emitter<HomeState> emit) {
    emit(const HomeState());
  }
}
