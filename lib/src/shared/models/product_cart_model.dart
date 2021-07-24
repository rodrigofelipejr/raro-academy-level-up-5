import 'package:shopping_cart/src/shared/models/product_model.dart';

class ProductCartModel {
  final ProductModel product;
  final int quantity;

  ProductCartModel({
    required this.product,
    required this.quantity,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductCartModel && other.product == product && other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;

  ProductCartModel copyWith({
    ProductModel? product,
    int? quantity,
  }) {
    return ProductCartModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  String toString() => 'ProductCartModel(product: $product, quantity: $quantity)';
}
