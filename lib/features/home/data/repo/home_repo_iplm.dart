import 'package:beachy/core/errors/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/api_services/api_services.dart';
import '../../../../core/api_services/urls.dart';
import '../../../../core/errors/failuer.dart';
import '../models/aprtments_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});

  @override
  Future<Either<Failure, ApartmentsData>> getApartments({int page = 1}) async {
    try {
      final response = await apiServices.post(
        data: {
          "page": page,
          "per_page": 15,
          "category_names": ["villa"]
        },
        endPoint: Urls.getAprtments,
      );

      if (response.statusCode == 200) {
        return Right(ApartmentsData.fromJson(response.data));
      } else {
        return Left(ServerFailure(
            response.data['message'] ?? ErrorHandler.defaultMessage()));
      }
    } catch (e) {
      return Left(ErrorHandler.handle(e));
    }
  }
}
