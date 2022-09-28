import 'package:kopa/resources/asset_pathes.dart';

 class Product {
  final String material;
  final double height;
  final String image;
  final String model;
  final String price;
  final double width;
  final int size;

  const Product({
    required this.material,
    required this.height,
    required this.model,
    required this.price,
    required this.width,
    required this.image,
    required this.size,
  });

  static const List<Product> products = [
    Product(
      image: AppImages.product,
      model: 'Nike 992K',
      material: 'Шкiра/Полiестр',
      price: '100',
      size: 40,
      width: 10,
      height: 28.5,
    ),
    Product(
      image: AppImages.product,
      model: 'Nike 992K',
      material: 'Шкiра/Полiестр',
      price: '100',
      size: 40,
      width: 10,
      height: 28.5,
    ),
    Product(
      image: AppImages.product,
      model: 'Nike 992K',
      material: 'Шкiра/Полiестр',
      price: '100',
      size: 40,
      width: 10,
      height: 28.5,
    ),
    Product(
      image: AppImages.product,
      model: 'Nike 992K',
      material: 'Шкiра/Полiестр',
      price: '100',
      size: 40,
      width: 10,
      height: 28.5,
    ),
    Product(
      image: AppImages.product,
      model: 'Nike 992K',
      material: 'Шкiра/Полiестр',
      price: '100',
      size: 40,
      width: 10,
      height: 28.5,
    ),
  ];
}
