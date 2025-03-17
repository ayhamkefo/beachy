import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/apartments_model.dart';
import '../../../data/repo/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo homeRepo;

  HomeBloc({required this.homeRepo}) : super(const HomeState()) {
    on<FetchApartments>(_fetchApartments);
    on<ResetPagination>(_resetPagination);
  }

  Future<void> _fetchApartments(
    FetchApartments event,
    Emitter<HomeState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      emit(state.copyWith(
        status: HomeStatus.loading,
        apartments: state.apartments,
      ));
      final nextPage = state.currentPage + 1;
      final result = await homeRepo.getApartments(page: nextPage);
      result.fold(
        (failure) => emit(state.copyWith(
          status: HomeStatus.failure,
          errorMessage: failure.message,
        )),
        (data) {
          final newApartments = [
            ...state.apartments,
            ...data.apartmentsData.data
          ];
          // final hasReachedMax = !data.apartmentsData.meta.hasMorePages;
          emit(state.copyWith(
            status: HomeStatus.success,
            apartments: newApartments,
            hasReachedMax: true, //hasReachedMax,
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
