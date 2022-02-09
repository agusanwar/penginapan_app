
class Space {
 late int id;
 late String name;
 late String imageUrl;
 late int price;
 late String country;
 late String city;
 late int rating;
 late String address;
 late String phones;
 late String mapUrl;
 late List photos;
 late int numberOfKitchens;
 late int numberOfbadrooms;
 late int numberOfCupboards;

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
        country: json['country'],
        city: json['city'],
        imageUrl: json['image_url'],
        price: json['price'],
        rating: json['rating'],
        address: json['address'],
        phones: json['phone'],
        mapUrl: json['map_url'],
        photos: json['photos'],
        numberOfbadrooms: json['number_of_bedrooms'],
        numberOfCupboards: json['number_of_cupboards'],
        numberOfKitchens: json['number_of_kitchens'],
      );

  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'name': name,
  //       'imageUrl': imageUrl,
  //       'price': price,
  //       'country': country,
  //       'city': city,
  //       'rating': rating,
  //       'address': address,
  //       'phones': phones,
  //       'mapUrl': mapUrl,
  //       'photos': photos,
  //       'numberOfKitchens': numberOfKitchens,
  //       'numberOfCupboards': numberOfCupboards,
  //       'numberOfbadrooms': numberOfbadrooms,
  //     };

  //     @override
  //     // ignore: override_on_non_overriding_member
  //     List<Object?> get props => [
  //       id,
  //       name,
  //       imageUrl,
  //       price,
  //       country,
  //       city,
  //       rating,
  //       address,
  //       phones,
  //       mapUrl,
  //       photos,
  //       numberOfKitchens,
  //       numberOfbadrooms,
  //       numberOfCupboards,
  //     ];
}
