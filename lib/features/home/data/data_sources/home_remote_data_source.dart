import '../models/apartments_data_model.dart';

abstract class HomeRemoteDataSource {
  Future<ApartmentsData> getApartments({int page = 1});
}
