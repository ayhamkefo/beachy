import 'package:json_annotation/json_annotation.dart';
import 'apartments_model.dart';
import 'map_data.dart';

part 'apartments_data_model.g.dart';

@JsonSerializable()
class ApartmentsData {
  @JsonKey(name: 'apartments')
  final Apartments apartmentsData;
  @JsonKey(name: 'map')
  final List<MapData> map;

  ApartmentsData({
    required this.apartmentsData,
    required this.map,
  });

  factory ApartmentsData.fromJson(Map<String, dynamic> json) =>
      _$ApartmentsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApartmentsDataToJson(this);
}
