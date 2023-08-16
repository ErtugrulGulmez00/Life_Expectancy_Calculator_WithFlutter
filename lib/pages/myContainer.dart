import 'package:flutter/material.dart';


class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  const MyContainer({
    this.renk=Colors.white,
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(12.0),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: renk),
            child: child,
          ),
        ),
        
      ],
    );
  }
}