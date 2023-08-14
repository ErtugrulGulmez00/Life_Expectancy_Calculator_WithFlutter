import 'package:flutter/material.dart';


class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  const MyContainer({
    required this.renk,
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: const EdgeInsets.all(12.0),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
    );
  }
}