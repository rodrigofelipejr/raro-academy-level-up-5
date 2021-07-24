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
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          (totalItens == 0)
              ? Text('Nenhum item selecionado', style: TextStyle(fontSize: 14.0, color: Colors.white))
              : Row(
                  children: [
                    Text(
                      '$totalItens ${totalItens == 1 ? 'item' : 'itens'}',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
          Row(
            children: [
              Text(
                'Total:',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              SizedBox(width: 8.0),
              Text(
                'R\$ ${Formatters.formatCurrency(totalPrice)}',
                style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
