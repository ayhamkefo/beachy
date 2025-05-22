import 'package:json_annotation/json_annotation.dart';
import 'meta.dart';
part 'apartments_model.g.dart';

@JsonSerializable()
class Apartments {
  final List<Apartment> data;
  final Meta meta;

  Apartments({
    required this.data,
    required this.meta,
  });

  factory Apartments.fromJson(Map<String, dynamic> json) =>
      _$ApartmentsFromJson(json);

  Map<String, dynamic> toJson() => _$ApartmentsToJson(this);
}

@JsonSerializable()
class Apartment {
  final int id;
  final String? title;
  final String? price;
  final int adults;
  @JsonKey(name: 'cover_image')
  final String? coverImage;
  @JsonKey(name: 'cover_video')
  final String? coverVideo;
  @JsonKey(name: 'reservations_count')
  final String? reservationsCount;
  final String? tag;
  @JsonKey(name: 'wishlist_item_id')
  final dynamic wishlistItemId;
  final List<ImageData> images;

  Apartment({
    required this.id,
    required this.title,
    required this.price,
    required this.adults,
    required this.coverImage,
    required this.coverVideo,
    required this.reservationsCount,
    required this.tag,
    required this.wishlistItemId,
    required this.images,
  });

  factory Apartment.fromJson(Map<String, dynamic> json) =>
      _$ApartmentFromJson(json);

  Map<String, dynamic> toJson() => _$ApartmentToJson(this);
}

@JsonSerializable()
class ImageData {
  final String src;

  ImageData({
    required this.src,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}
