import 'dart:math';

import 'package:flutter/material.dart';
import '../../../shared/models/models.dart';

class ProductRepository {
  List<ProductModel> fetchProductsRemote() {
    return List.generate(
      20,
      (index) => ProductModel(
        id: ++index,
        description: 'Product $index',
        price: Random().nextDouble() * Random().nextInt(99) * index,
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
    );
  }
}
