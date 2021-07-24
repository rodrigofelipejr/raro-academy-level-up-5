import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../models/models.dart';

class ProductItemCartWidget extends StatelessWidget {
  final ProductCartModel productCart;
  final Function() onPressedAdd;
  final Function() onPressedRemove;

  const ProductItemCartWidget({
    Key? key,
    required this.productCart,
    required this.onPressedAdd,
    required this.onPressedRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productCart.product.description),
      subtitle: Text('R\$ ${Formatters.formatCurrency(productCart.product.price)}'),
      leading: CircleAvatar(
        backgroundColor: Colors.teal[300],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: onPressedRemove,
            icon: Icon(
              Icons.remove_circle,
              color: Colors.red[300],
            ),
          ),
          Text(productCart.quantity.toString()),
          IconButton(
            onPressed: onPressedAdd,
            icon: Icon(
              Icons.add_circle,
              color: Colors.teal[300],
            ),
          ),
        ],
      ),
    );
  }
}
