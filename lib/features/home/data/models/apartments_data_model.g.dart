// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartments_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApartmentsData _$ApartmentsDataFromJson(Map<String, dynamic> json) =>
    ApartmentsData(
      apartmentsData:
          Apartments.fromJson(json['apartments'] as Map<String, dynamic>),
      map: (json['map'] as List<dynamic>)
          .map((e) => MapData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApartmentsDataToJson(ApartmentsData instance) =>
    <String, dynamic>{
      'apartments': instance.apartmentsData,
      'map': instance.map,
    };
