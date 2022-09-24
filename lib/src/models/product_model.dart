import 'package:kopa/resources/asset_pathes.dart';

class Product {
  final String image;
  final String model;
  final String material;
  final double price;
  final int size;
  final double width;
  final double height;

  const Product({
    required this.model,
    required this.material,
    required this.price,
    required this.size,
    required this.width,
    required this.height,
    required this.image,
  });

  static const List<Product> products = [
    Product(
      image: AppImages.product,
      model: 'Nike 992K',
      material: 'Шкiра/Полiестр',
      price: 100,
      size: 40,
      width: 10,
      height: 28.5,
    ),
  ];
}
