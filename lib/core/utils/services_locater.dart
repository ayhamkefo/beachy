import 'package:beachy/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:beachy/features/home/data/data_sources/home_remote_data_source_impl.dart';
import 'package:beachy/features/home/domain/usecases/get_apartments_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/domain/repositories/home_repo.dart';
import '../../features/home/data/repo/home_repo_iplm.dart';
import '../../features/home/presentation/veiw-model/bloc/home_bloc.dart';
import '../api_services/api_services.dart';

final getit = GetIt.instance;

void setupLocatorServices() {
  //Dio
  getit.registerLazySingleton<Dio>(() => Dio(BaseOptions(
      connectTimeout: const Duration(minutes: 1),
      sendTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1))));

  // API Services
  getit.registerLazySingleton<ApiServices>(() => ApiServices(getit()));

  // Data Source
  getit.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(getit()));

  // Repositories
  getit.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getit()));

  //Home usecases
  getit.registerLazySingleton<GetApartmentsUseCase>(
      () => GetApartmentsUseCase(getit()));

  // BLoC
  getit.registerFactory<HomeBloc>(() => HomeBloc(getit()));
}
