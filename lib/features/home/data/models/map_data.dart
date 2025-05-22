import 'package:beachy/features/home/domain/entities/map_data_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'map_data.g.dart';

@JsonSerializable()
class MapData extends MapDataEntity {
  final int id;
  final String? latitude;
  final String? longitude;
  final dynamic price;

  MapData({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.price,
  }) : super(id: id, latitude: latitude, longitude: longitude, price: price);

  factory MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);

  Map<String, dynamic> toJson() => _$MapDataToJson(this);

  MapDataEntity toEntity() {
    return MapDataEntity(
      id: id,
      latitude: latitude,
      longitude: longitude,
      price: price,
    );
  }
}
