import 'package:mobx/mobx.dart';

import '../../modules.dart';
import '../../../shared/models/models.dart';

part 'products_store.g.dart';

class ProductsStore extends _ProductsStoreBase with _$ProductsStore {
  final ProductRepository repository;
  ProductsStore(this.repository) : super(repository);
}

abstract class _ProductsStoreBase with Store {
  final ProductRepository repository;

  _ProductsStoreBase(this.repository);

  @observable
  var products = ObservableList<ProductModel>();

  @action
  void addProducts(List<ProductModel> list) => products.addAll(list);

  @action
  void selectedProduct(ProductModel product) => products[products.indexOf(product)] = product.copyWith(selected: true);

  @action
  void cleanProducts() => products.clear();

  void fetchProducts() => addProducts(repository.fetchProductsRemote());

  @action
  void updateStoreProducts(List<ProductModel> listCart) {
    cleanProducts();

    if (listCart.isEmpty) {
      fetchProducts();
    } else {
      var list = repository.fetchProductsRemote();

      for (var i = 0; i < list.length; i++) {
        if (listCart.where((e) => e.id == list[i].id).toList().isNotEmpty) {
          list[i] = list[i].copyWith(selected: true);
        }
      }
      addProducts(list);
    }
  }
}
