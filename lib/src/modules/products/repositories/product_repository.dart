import 'dart:math';

import '../../../shared/models/models.dart';

class ProductRepository {
  List<ProductModel> fetchProductsRemote() {
    return List.generate(
      2,
      (index) => ProductModel(
        id: ++index,
        description: 'Product $index',
        price: Random().nextDouble() * Random().nextInt(99) * index,
      ),
    );
  }
}
