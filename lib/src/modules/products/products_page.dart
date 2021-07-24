import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../modules.dart';
import '../../shared/modules/modules.dart';
import '../../shared/widgets/widgets.dart';
import 'widget/widgets.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late final ProductsStore productsStore;
  late final CartStore cartStore;

  @override
  void initState() {
    super.initState();
    productsStore = context.read<ProductsStore>()..fetchProducts();
    cartStore = context.read<CartStore>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          Observer(
            builder: (_) {
              return ButtonCartWidget(
                onPressed: () => Navigator.pushNamed(context, '/cart'),
                label: cartStore.totalCartItens.toString(),
              );
            },
          ),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: productsStore.products.length,
            itemBuilder: (_, index) {
              final product = productsStore.products[index];
              return ProductItemWidget(
                product: product,
                onTap: () {
                  productsStore.selectedProduct(productsStore.products[index]);
                  cartStore.addCartItem(productsStore.products[index]);
                },
              );
            },
          );
        },
      ),
    );
  }
}
