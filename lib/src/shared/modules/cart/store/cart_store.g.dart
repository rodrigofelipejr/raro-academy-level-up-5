// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStore on _CartStoreBase, Store {
  Computed<double>? _$totalCartPriceComputed;

  @override
  double get totalCartPrice =>
      (_$totalCartPriceComputed ??= Computed<double>(() => super.totalCartPrice,
              name: '_CartStoreBase.totalCartPrice'))
          .value;
  Computed<int>? _$totalCartItensComputed;

  @override
  int get totalCartItens =>
      (_$totalCartItensComputed ??= Computed<int>(() => super.totalCartItens,
              name: '_CartStoreBase.totalCartItens'))
          .value;

  final _$productsAtom = Atom(name: '_CartStoreBase.products');

  @override
  ObservableList<ProductCartModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductCartModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_CartStoreBaseActionController =
      ActionController(name: '_CartStoreBase');

  @override
  void addCartItem(ProductModel product) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.addCartItem');
    try {
      return super.addCartItem(product);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCartItem(ProductCartModel productCart) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.removeCartItem');
    try {
      return super.removeCartItem(productCart);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void cleanCartItems() {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.cleanCartItems');
    try {
      return super.cleanCartItems();
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products},
totalCartPrice: ${totalCartPrice},
totalCartItens: ${totalCartItens}
    ''';
  }
}
