class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String country;
  String city;
  int rating;
  String address;
  String phones;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfbadrooms;
  int numberOfCupboards;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.country,
    required this.city,
    required this.rating,
    required this.address,
    required this.phones,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchens,
    required this.numberOfbadrooms,
    required this.numberOfCupboards,
  });

  // Constuctor data json
  factory Space.fromJson(Map<String, dynamic> json) => Space(
        id: json['id'],
        name: json['name'],
        imageUrl: json['imageUrl'],
        price: json['price'],
        country: json['country'],
        city: json['city'],
        rating: json['rating'],
        address: json['address'],
        phones: json['phones'],
        mapUrl: json['mapUrl'],
        photos: json['photos'],
        numberOfKitchens: json['numberOfKitchens'],
        numberOfbadrooms: json['numberOfbadrooms'],
        numberOfCupboards: json['numberOfCupboards'],
      );

}
