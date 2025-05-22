// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apartments _$ApartmentsFromJson(Map<String, dynamic> json) => Apartments(
      data: (json['data'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApartmentsToJson(Apartments instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

Apartment _$ApartmentFromJson(Map<String, dynamic> json) => Apartment(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      price: json['price'] as String?,
      adults: (json['adults'] as num).toInt(),
      coverImage: json['cover_image'] as String?,
      coverVideo: json['cover_video'] as String?,
      reservationsCount: json['reservations_count'] as String?,
      tag: json['tag'] as String?,
      wishlistItemId: json['wishlist_item_id'],
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApartmentToJson(Apartment instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'adults': instance.adults,
      'cover_image': instance.coverImage,
      'cover_video': instance.coverVideo,
      'reservations_count': instance.reservationsCount,
      'tag': instance.tag,
      'wishlist_item_id': instance.wishlistItemId,
      'images': instance.images,
    };

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      src: json['src'] as String,
    );

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'src': instance.src,
    };
