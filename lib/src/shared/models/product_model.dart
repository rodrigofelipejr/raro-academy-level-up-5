import 'package:flutter/material.dart';

import '../entities/entities.dart';

class ProductModel extends ProductEntity {
  final bool selected;

  ProductModel({
    required int id,
    required String description,
    required double price,
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
        other.selected == selected;
  }

  @override
  int get hashCode => selected.hashCode;

  @override
  String toString() => 'ProductModel(selected: $selected, id: ${super.id})';
}
