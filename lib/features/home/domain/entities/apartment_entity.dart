import 'image_data_entity.dart';

class ApartmentEntity {
  final int id;
  final String? title;
  final String? price;
  final int adults;
  final String? coverImage;
  final String? coverVideo;
  final String? reservationsCount;
  final String? tag;
  final dynamic wishlistItemId;
  final List<ImageDataEntity> images;

  ApartmentEntity({
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
}
