import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../models/models.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel product;
  final Function() onTap;

  const ProductItemWidget({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(product.description),
      leading: CircleAvatar(
        backgroundColor: Colors.amber,
      ),
      trailing: product.selected ? Icon(Icons.done) : Text('R\$ ${Formatters.formatCurrency(product.price)}'),
    );
  }
}
