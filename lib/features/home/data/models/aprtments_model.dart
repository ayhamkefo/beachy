class ApartmentsData {
  final Apartments apartmentsData;
  final List<MapData> map;

  ApartmentsData({
    required this.apartmentsData,
    required this.map,
  });

  factory ApartmentsData.fromJson(Map<String, dynamic> json) {
    return ApartmentsData(
      apartmentsData: Apartments.fromJson(json['data']['apartments']),
      map: (json['data']['map'] as List)
          .map((item) => MapData.fromJson(item))
          .toList(),
    );
  }
}

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
  //final dynamic wishlistItemId;
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
    //required this.wishlistItemId,
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
      //wishlistItemId: json['wishlist_item_id'],
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

class Meta {
  final int currentPage;
  final int lastPage;
  final int perPage;
  final int total;
  final bool hasMorePages;

  Meta({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
    required this.hasMorePages,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      currentPage: json['current_page'],
      lastPage: json['last_page'],
      perPage: json['per_page'],
      total: json['total'],
      hasMorePages: json['has_more_pages'],
    );
  }
}

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

  factory MapData.fromJson(Map<String, dynamic> json) {
    return MapData(
      id: json['id'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      price: json['price'],
    );
  }
}
