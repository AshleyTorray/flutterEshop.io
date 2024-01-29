import 'package:shop_app/models/ColorWay.dart';
import 'package:shop_app/models/ProductSize.dart';
import 'package:shop_app/models/Review.dart';

class ServiceItems {
  List<String> image;
  String name;
  int price;
  double rating;
  String description;
  List<ColorWay> colors;
  List<ProductSize> sizes;
  List<Review> reviews;
  String storeName;

  ServiceItems({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.colors,
    required this.sizes,
    required this.reviews,
    required this.storeName,
  });

  factory ServiceItems.fromJson(Map<String, dynamic> json) {
    return ServiceItems(
      image: json['image'],
      name: json['name'],
      price: json['price'],
      rating: json['rating'],
      description: json['description'],
      colors: (json['colors'] as List)
          .map((data) => ColorWay.fromJson(data))
          .toList(),
      sizes: (json['sizes'] as List)
          .map((data) => ProductSize.fromJson(data))
          .toList(),
      reviews: (json['reviews'] as List)
          .map((data) => Review.fromJson(data))
          .toList(),
      storeName: json['store_name'],
    );
  }
}
