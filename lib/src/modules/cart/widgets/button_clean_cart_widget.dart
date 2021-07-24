import 'package:flutter/material.dart';

class ButtonCleanCartWidget extends StatelessWidget {
  final Function() onTap;

  const ButtonCleanCartWidget({Key? key, required this.onTap}) : super(key: key);

  BorderRadius get borderRadius => BorderRadius.circular(100.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0, right: 10.0),
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Center(
                child: Text(
                  'Limpar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
