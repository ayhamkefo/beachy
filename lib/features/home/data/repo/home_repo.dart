import 'package:dartz/dartz.dart';

import '../models/aprtments_model.dart';
import '../../../../core/errors/failuer.dart';

abstract class HomeRepo {
  Future<Either<Failure, ApartmentsData>> getApartments({int page = 1});
}
