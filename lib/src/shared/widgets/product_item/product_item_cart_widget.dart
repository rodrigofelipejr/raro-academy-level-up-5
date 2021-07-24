import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../models/models.dart';

class ProductItemCartWidget extends StatelessWidget {
  final ProductModel product;
  final Function() onPressedAdd;
  final Function() onPressedRemove;

  const ProductItemCartWidget({
    Key? key,
    required this.product,
    required this.onPressedAdd,
    required this.onPressedRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.description),
      subtitle: Text('R\$ ${Formatters.formatCurrency(product.price)}'),
      leading: CircleAvatar(
        backgroundColor: Colors.amber,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: onPressedRemove,
            icon: Icon(Icons.remove_circle),
          ),
          Text('1'),
          IconButton(
            onPressed: onPressedAdd,
            icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}
