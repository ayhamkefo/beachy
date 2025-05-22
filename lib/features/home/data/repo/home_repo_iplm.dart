import 'dart:developer';

import 'package:beachy/core/errors/error_handler.dart';
import 'package:beachy/features/home/domain/entities/apartments_data_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failuer.dart';
import '../data_sources/home_remote_data_source.dart';
import '../../domain/repositories/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepoImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, ApartmentsDataEntity>> getApartments(
      {int page = 1}) async {
    try {
      final apartmentsDataModel =
          await _remoteDataSource.getApartments(page: page);
      return Right(apartmentsDataModel.toEntity());
    } catch (e) {
      log("Home Error: ${e.toString()}");
      return Left(ErrorHandler.handle(e));
    }
  }
}
