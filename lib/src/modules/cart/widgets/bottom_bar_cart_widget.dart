import 'package:flutter/material.dart';

import '../../../shared/helpers/helpers.dart';

class BottomBarCartWidget extends StatelessWidget {
  final int totalItens;
  final double totalPrice;

  const BottomBarCartWidget({
    Key? key,
    required this.totalItens,
    required this.totalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          (totalItens == 0)
              ? Text('Nenhum item selecionado')
              : Row(
                  children: [
                    Text('$totalItens'),
                    Text('${totalItens == 1 ? ' item' : ' itens'}'),
                  ],
                ),
          Row(
            children: [
              Text('Total:'),
              Text('R\$ ${Formatters.formatCurrency(totalPrice)}'),
            ],
          ),
        ],
      ),
    );
  }
}
