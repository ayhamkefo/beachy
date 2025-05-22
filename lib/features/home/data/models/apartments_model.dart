import 'package:beachy/features/home/domain/entities/apartment_entity.dart';
import 'package:beachy/features/home/domain/entities/apartments_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/image_data_entity.dart';
import 'meta.dart';
part 'apartments_model.g.dart';

@JsonSerializable()
class Apartments extends ApartmentsEntity {
  final List<Apartment> data;
  final Meta meta;

  Apartments({
    required this.data,
    required this.meta,
  }) : super(data: data, meta: meta);

  factory Apartments.fromJson(Map<String, dynamic> json) =>
      _$ApartmentsFromJson(json);

  Map<String, dynamic> toJson() => _$ApartmentsToJson(this);

  ApartmentsEntity toEntity() {
    return ApartmentsEntity(
      data: data.map((dto) => dto.toEntity()).toList(),
      meta: meta.toEntity(),
    );
  }
}

@JsonSerializable()
class Apartment extends ApartmentEntity {
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
  }) : super(
          id: id,
          title: title,
          price: price,
          adults: adults,
          coverImage: coverImage,
          coverVideo: coverVideo,
          reservationsCount: reservationsCount,
          tag: tag,
          wishlistItemId: wishlistItemId,
          images: images.map((dto) => dto as ImageDataEntity).toList(),
        );

  factory Apartment.fromJson(Map<String, dynamic> json) =>
      _$ApartmentFromJson(json);

  Map<String, dynamic> toJson() => _$ApartmentToJson(this);

  ApartmentEntity toEntity() {
    return ApartmentEntity(
      id: id,
      title: title,
      price: price,
      adults: adults,
      coverImage: coverImage,
      coverVideo: coverVideo,
      reservationsCount: reservationsCount,
      tag: tag,
      wishlistItemId: wishlistItemId,
      images: images.map((dto) => dto.toEntity()).toList(),
    );
  }
}

@JsonSerializable()
class ImageData extends ImageDataEntity {
  final String src;

  ImageData({
    required this.src,
  }) : super(src: src);

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataToJson(this);

  ImageDataEntity toEntity() {
    return ImageDataEntity(src: src);
  }
}
