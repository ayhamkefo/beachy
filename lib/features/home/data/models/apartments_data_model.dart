import 'apartments_model.dart';
import 'map_data.dart';

class ApartmentsData {
  final Apartments apartmentsData;
  final List<MapData> map;

  ApartmentsData({
    required this.apartmentsData,
    required this.map,
  });

  factory ApartmentsData.fromJson(Map<String, dynamic> json) {
    return ApartmentsData(
      apartmentsData: Apartments.fromJson(json['data']['apartments']),
      map: (json['data']['map'] as List)
          .map((item) => MapData.fromJson(item))
          .toList(),
    );
  }
}
