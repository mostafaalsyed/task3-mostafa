import 'package:flutter/material.dart';

  class AppButton extends StatelessWidget {
  final String label;
  final Color color;
  final void Function()? onTop;
  const AppButton({Key? key,
  required this.label,
  required this.color,
  this.onTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:onTop,
        child: Container(
            width: 400,
            height: 60,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5)),
                child: Center(
                child: Text(
                label,
                style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ))));
  }
}