import 'package:flutter/material.dart';

class ButtonCartWidget extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const ButtonCartWidget({Key? key, required this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            padding: const EdgeInsets.only(left: 18.0, right: 16.0),
            onPressed: onPressed,
            icon: Icon(Icons.shopping_cart),
          ),
          Positioned(
            right: 12.0,
            bottom: 12.0,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 8,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
