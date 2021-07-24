import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../modules.dart';
import '../../shared/modules/modules.dart';
import '../../shared/widgets/widgets.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late final ProductsStore productsStore;
  late final CartStore cartStore;
  // List<ReactionDisposer> disposers = [];

  @override
  void initState() {
    super.initState();
    productsStore = context.read<ProductsStore>()..fetchProducts();
    cartStore = context.read<CartStore>();
    // disposers.add(reaction((_) => cartStore.totalCartItens, (value) => productsStore.fetchProducts()));
  }

  @override
  void dispose() {
    // disposers.forEach((disposer) => dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart'),
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 8,
                  child: Observer(
                    builder: (_) {
                      return Text(
                        cartStore.totalCartItens.toString(),
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
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
                onTap: () => cartStore.addCartItem(product),
              );
            },
          );
        },
      ),
    );
  }
}
