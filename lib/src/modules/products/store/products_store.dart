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
  void cleanProducts() => products.clear();

  void fetchProducts() {
    final result = repository.fetchProductsRemote();
    addProducts(result);
  }
}
