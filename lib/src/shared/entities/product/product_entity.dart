import 'dart:convert';

class ProductEntity {
  final int id;
  final String description;
  final double price;

  ProductEntity({
    required this.id,
    required this.description,
    required this.price,
  });

  ProductEntity copyWith({
    int? id,
    String? description,
    double? price,
  }) {
    return ProductEntity(
      id: id ?? this.id,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'price': price,
    };
  }

  factory ProductEntity.fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      id: map['id'],
      description: map['description'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductEntity.fromJson(String source) => ProductEntity.fromMap(json.decode(source));

  @override
  String toString() => 'ProductEntity(id: $id, description: $description, price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductEntity && other.id == id && other.description == description && other.price == price;
  }

  @override
  int get hashCode => id.hashCode ^ description.hashCode ^ price.hashCode;
}
