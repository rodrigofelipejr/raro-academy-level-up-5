import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../models/models.dart';

class ProductItemWidget extends StatefulWidget {
  final ProductModel product;
  final Function() onTap;

  const ProductItemWidget({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        widget.onTap.call();
        _selected = true;
        setState(() {});
      },
      title: Text(widget.product.description),
      leading: CircleAvatar(
        backgroundColor: widget.product.color,
      ),
      trailing: _selected ? Icon(Icons.done) : Text('R\$ ${Formatters.formatCurrency(widget.product.price)}'),
    );
  }
}
