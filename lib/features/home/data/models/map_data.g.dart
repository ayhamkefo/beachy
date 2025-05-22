// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapData _$MapDataFromJson(Map<String, dynamic> json) => MapData(
      id: (json['id'] as num).toInt(),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      price: json['price'],
    );

Map<String, dynamic> _$MapDataToJson(MapData instance) => <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'price': instance.price,
    };
