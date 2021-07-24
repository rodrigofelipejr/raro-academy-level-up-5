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
    productsStore = context.read<ProductsStore>();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        productsStore.updateStoreProducts(
          cartStore.products.map((e) => e.product).toList(),
        );
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          actions: [
            ButtonCleanCartWidget(
              onTap: cartStore.cleanCartItems,
            ),
          ],
        ),
        body: cartStore.products.isEmpty
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.grey[400],
                        size: 48.0,
                      ),
                    ),
                    Text('Seu carrinho está vazio'),
                  ],
                ),
              )
            : Observer(
                builder: (_) => Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: cartStore.products.length,
                        itemBuilder: (_, index) {
                          final productCart = cartStore.products[index];
                          return ProductItemCartWidget(
                            productCart: productCart,
                            onPressedAdd: () => cartStore.addCartItem(productCart.product),
                            onPressedRemove: () {
                              cartStore.removeCartItem(productCart);
                            },
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
      ),
    );
  }
}
