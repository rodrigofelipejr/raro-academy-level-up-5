// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsStore on _ProductsStoreBase, Store {
  final _$productsAtom = Atom(name: '_ProductsStoreBase.products');

  @override
  ObservableList<ProductModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_ProductsStoreBaseActionController =
      ActionController(name: '_ProductsStoreBase');

  @override
  void addProducts(List<ProductModel> list) {
    final _$actionInfo = _$_ProductsStoreBaseActionController.startAction(
        name: '_ProductsStoreBase.addProducts');
    try {
      return super.addProducts(list);
    } finally {
      _$_ProductsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectedProduct(ProductModel product) {
    final _$actionInfo = _$_ProductsStoreBaseActionController.startAction(
        name: '_ProductsStoreBase.selectedProduct');
    try {
      return super.selectedProduct(product);
    } finally {
      _$_ProductsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void cleanProducts() {
    final _$actionInfo = _$_ProductsStoreBaseActionController.startAction(
        name: '_ProductsStoreBase.cleanProducts');
    try {
      return super.cleanProducts();
    } finally {
      _$_ProductsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateStoreProducts(List<ProductModel> listCart) {
    final _$actionInfo = _$_ProductsStoreBaseActionController.startAction(
        name: '_ProductsStoreBase.updateStoreProducts');
    try {
      return super.updateStoreProducts(listCart);
    } finally {
      _$_ProductsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
