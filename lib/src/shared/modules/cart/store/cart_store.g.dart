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

  final _$_productsAtom = Atom(name: '_CartStoreBase._products');

  @override
  ObservableList<ProductModel> get _products {
    _$_productsAtom.reportRead();
    return super._products;
  }

  @override
  set _products(ObservableList<ProductModel> value) {
    _$_productsAtom.reportWrite(value, super._products, () {
      super._products = value;
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
  void removeCartItem(ProductModel product) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.removeCartItem');
    try {
      return super.removeCartItem(product);
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
  bool inCart(ProductModel product) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.inCart');
    try {
      return super.inCart(product);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalCartPrice: ${totalCartPrice},
totalCartItens: ${totalCartItens}
    ''';
  }
}
