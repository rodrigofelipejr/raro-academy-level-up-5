import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../shared/widgets/widgets.dart';
import '../../shared/modules/modules.dart';
import 'widgets/widgets.dart';
import '../products/products.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final CartStore cartStore;
  late final ProductsStore productsStore;

  @override
  void initState() {
    super.initState();
    cartStore = context.read<CartStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        actions: [
          ButtonCleanCartWidget(onTap: () {
            cartStore.cleanCartItems();
            context.read<ProductsStore>()
              ..cleanProducts()
              ..fetchProducts();
          }),
        ],
      ),
      body: Observer(
        builder: (_) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartStore.totalCartItens,
                itemBuilder: (_, index) {
                  final product = cartStore.product(index);
                  return ProductItemCartWidget(
                    product: product,
                    onPressedAdd: () => cartStore.addCartItem(product),
                    onPressedRemove: () => cartStore.removeCartItem(product),
                  );
                },
              ),
            ),
            BottomBarCartWidget(
              totalItens: cartStore.totalCartItens,
              totalPrice: cartStore.totalCartPrice,
            )
          ],
        ),
      ),
    );
  }
}
