import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuer.dart';
import '../entities/apartments_data_entity.dart';
import '../repositories/home_repo.dart';

class GetApartmentsUseCase {
  final HomeRepo repository;

  GetApartmentsUseCase(this.repository);

  Future<Either<Failure, ApartmentsDataEntity>> call({int page = 1}) async {
    return await repository.getApartments(page: page);
  }
}
