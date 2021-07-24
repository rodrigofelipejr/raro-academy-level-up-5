import 'package:mobx/mobx.dart';

import '../../../models/models.dart';

part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  @observable
  var products = ObservableList<ProductCartModel>();

  @action
  void addCartItem(ProductModel product) {
    if (products.isEmpty) {
      products.add(ProductCartModel(product: product, quantity: 1));
      return;
    }

    final index = productInCart(product);

    if (index != null) {
      products[index] = products[index].copyWith(quantity: products[index].quantity + 1);
    } else {
      products.add(ProductCartModel(product: product, quantity: 1));
    }
  }

  @action
  void removeCartItem(ProductCartModel productCart) {
    if (productCart.quantity == 1) {
      products.remove(productCart);
    } else {
      final index = products.indexOf(productCart);
      products[index] = products[index].copyWith(quantity: productCart.quantity - 1);
    }
  }

  @action
  void cleanCartItems() {
    products.clear();
  }

  @computed
  double get totalCartPrice => products.fold(0, (total, item) => total += (item.quantity * item.product.price));

  @computed
  int get totalCartItens => products.length;

  int? productInCart(ProductModel product) {
    for (var i = 0; i < products.length; i++) {
      if (products[i].product.id == product.id) return i;
    }
    return null;
  }
}
