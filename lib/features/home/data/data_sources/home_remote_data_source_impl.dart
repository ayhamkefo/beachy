import '../../../../core/api_services/api_services.dart';
import '../../../../core/api_services/urls.dart';
import '../../../../core/errors/failuer.dart';
import '../models/apartments_data_model.dart';
import 'home_remote_data_source.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);

  @override
  Future<ApartmentsData> getApartments({int page = 1}) async {
    final response = await apiServices.post(
      data: {
        "page": page,
        "per_page": 15,
        "category_names": ["villa"]
      },
      endPoint: Urls.getAprtments,
    );

    if (response.statusCode == 200) {
      return ApartmentsData.fromJson(response.data['data']);
    } else {
      throw ServerFailure(response.data['message']);
    }
  }
}
