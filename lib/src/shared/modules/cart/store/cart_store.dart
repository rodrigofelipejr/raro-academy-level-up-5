import 'package:mobx/mobx.dart';

import '../../../models/models.dart';

part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  @observable
  var _products = ObservableList<ProductModel>();

  @action
  void addCartItem(ProductModel product) {
    _products.add(product);
  }

  @action
  void removeCartItem(ProductModel product) {
    _products.remove(product);
  }

  @action
  void cleanCartItems() {
    _products.clear();
  }

  ProductModel product(int index) => _products[index];

  @action
  bool inCart(ProductModel product) => _products.contains(product);

  @computed
  double get totalCartPrice => _products.fold(0, (total, c) => total += c.price);

  @computed
  int get totalCartItens => _products.length;
}
