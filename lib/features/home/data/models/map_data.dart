import 'package:json_annotation/json_annotation.dart';

part 'map_data.g.dart';

@JsonSerializable()
class MapData {
  final int id;
  final String? latitude;
  final String? longitude;
  final dynamic price;

  MapData({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.price,
  });

  factory MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);

  Map<String, dynamic> toJson() => _$MapDataToJson(this);
}
