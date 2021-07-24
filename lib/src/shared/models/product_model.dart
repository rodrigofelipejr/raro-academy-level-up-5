import 'package:flutter/material.dart';

import '../entities/entities.dart';

class ProductModel extends ProductEntity {
  final Color color;
  final bool selected;

  ProductModel({
    required int id,
    required String description,
    required double price,
    required this.color,
    this.selected = false,
  }) : super(id: id, description: description, price: price);

  ProductModel copyWith({
    int? id,
    String? description,
    double? price,
    Color? color,
    bool? selected,
  }) {
    return ProductModel(
      id: id ?? this.id,
      description: description ?? this.description,
      price: price ?? this.price,
      color: color ?? this.color,
      selected: selected ?? this.selected,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.id == id &&
        other.description == description &&
        other.price == price &&
        other.color == color &&
        other.selected == selected;
  }

  @override
  int get hashCode => color.hashCode ^ selected.hashCode;
}
