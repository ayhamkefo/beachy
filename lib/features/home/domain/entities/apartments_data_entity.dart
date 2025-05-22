import 'apartments_entity.dart';
import 'map_data_entity.dart';

class ApartmentsDataEntity {
  final ApartmentsEntity apartments;
  final List<MapDataEntity> map;

  ApartmentsDataEntity({
    required this.apartments,
    required this.map,
  });
}
