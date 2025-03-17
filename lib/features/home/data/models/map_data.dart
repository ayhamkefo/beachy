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
