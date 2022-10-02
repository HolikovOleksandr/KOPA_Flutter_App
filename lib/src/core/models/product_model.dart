import 'dart:convert';

class ProductModel {
  int id;
  final String material;
  final String height;
  final String image;
  final String model;
  final int price;
  final String width;
  final String size;
  ProductModel({
    required this.id,
    required this.material,
    required this.height,
    required this.image,
    required this.model,
    required this.price,
    required this.width,
    required this.size,
  });

  ProductModel copyWith({
    int? id,
    String? material,
    String? height,
    String? image,
    String? model,
    int? price,
    String? width,
    String? size,
  }) {
    return ProductModel(
      id: id ?? this.id,
      material: material ?? this.material,
      height: height ?? this.height,
      image: image ?? this.image,
      model: model ?? this.model,
      price: price ?? this.price,
      width: width ?? this.width,
      size: size ?? this.size,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'material': material});
    result.addAll({'height': height});
    result.addAll({'image': image});
    result.addAll({'model': model});
    result.addAll({'price': price});
    result.addAll({'width': width});
    result.addAll({'size': size});

    return result;
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id']?.toInt() ?? 0,
      material: map['material'] ?? '',
      height: map['height'] ?? '',
      image: map['image'] ?? '',
      model: map['model'] ?? '',
      price: map['price']?.toInt() ?? 0,
      width: map['width'] ?? '',
      size: map['size']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, material: $material, height: $height, image: $image, model: $model, price: $price, width: $width, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.id == id &&
        other.material == material &&
        other.height == height &&
        other.image == image &&
        other.model == model &&
        other.price == price &&
        other.width == width &&
        other.size == size;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        material.hashCode ^
        height.hashCode ^
        image.hashCode ^
        model.hashCode ^
        price.hashCode ^
        width.hashCode ^
        size.hashCode;
  }
}
