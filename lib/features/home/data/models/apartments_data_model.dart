import 'package:beachy/features/home/domain/entities/apartments_data_entity.dart';

import 'package:beachy/features/home/domain/entities/map_data_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'apartments_model.dart';
import 'map_data.dart';

part 'apartments_data_model.g.dart';

@JsonSerializable()
class ApartmentsData extends ApartmentsDataEntity {
  @JsonKey(name: 'apartments')
  final Apartments apartmentsData;
  @JsonKey(name: 'map')
  final List<MapData> map;

  ApartmentsData({
    required this.apartmentsData,
    required this.map,
  }) : super(
            apartments: apartmentsData,
            map: map.map((data) => data as MapDataEntity).toList());

  factory ApartmentsData.fromJson(Map<String, dynamic> json) =>
      _$ApartmentsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApartmentsDataToJson(this);

  ApartmentsDataEntity toEntity() {
    return ApartmentsDataEntity(
      apartments: apartmentsData.toEntity(),
      map: map.map((dto) => dto.toEntity()).toList(),
    );
  }
}
