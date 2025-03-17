import 'meta.dart';

class Apartments {
  final List<Apartment> data;
  final Meta meta;

  Apartments({
    required this.data,
    required this.meta,
  });

  factory Apartments.fromJson(Map<String, dynamic> json) {
    return Apartments(
      data: (json['data'] as List)
          .map((item) => Apartment.fromJson(item))
          .toList(),
      meta: Meta.fromJson(json['meta']),
    );
  }
}

class Apartment {
  final int id;
  final String? title;
  final String? price;
  final int adults;
  final String? coverImage;
  final String? coverVideo;
  final int reservationsCount;
  final String? tag;
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

  factory Apartment.fromJson(Map<String, dynamic> json) {
    return Apartment(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      adults: json['adults'],
      coverImage: json['cover_image'],
      coverVideo: json['cover_video'],
      reservationsCount: json['reservations_count'],
      tag: json['tag'],
      wishlistItemId: json['wishlist_item_id'],
      images: (json['images'] as List)
          .map((item) => ImageData.fromJson(item))
          .toList(),
    );
  }
}

class ImageData {
  final String src;

  ImageData({
    required this.src,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(
      src: json['src'],
    );
  }
}
