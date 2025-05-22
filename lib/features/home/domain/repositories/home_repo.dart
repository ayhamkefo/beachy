import 'package:dartz/dartz.dart';
import '../../../../core/errors/failuer.dart';
import '../entities/apartments_data_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, ApartmentsDataEntity>> getApartments({int page = 1});
}
