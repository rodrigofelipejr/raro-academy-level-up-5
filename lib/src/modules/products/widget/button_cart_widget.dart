import 'package:flutter/material.dart';

class ButtonCartWidget extends StatelessWidget {
  final String label;
  final Function() onTap;

  const ButtonCartWidget({Key? key, required this.label, required this.onTap}) : super(key: key);

  BorderRadius get borderRadius => BorderRadius.circular(100.0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 58.0,
                width: 58.0,
                child: Icon(Icons.shopping_cart),
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
        ),
      ),
    );
  }
}
