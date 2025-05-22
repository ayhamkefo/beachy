part of 'home_bloc.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState extends Equatable {
  final HomeStatus status;
  final List<ApartmentEntity> apartments;
  final bool hasReachedMax;
  final int currentPage;
  final String? errorMessage;

  const HomeState({
    this.status = HomeStatus.initial,
    this.apartments = const [],
    this.hasReachedMax = false,
    this.currentPage = 0,
    this.errorMessage,
  });

  HomeState copyWith({
    HomeStatus? status,
    List<ApartmentEntity>? apartments,
    bool? hasReachedMax,
    int? currentPage,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      apartments: apartments ?? this.apartments,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        apartments,
        hasReachedMax,
        currentPage,
        errorMessage,
      ];
}
