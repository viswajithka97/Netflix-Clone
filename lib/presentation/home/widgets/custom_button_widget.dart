import 'package:flutter/material.dart';

class HomeCustomButtonWidget extends StatelessWidget {
  const HomeCustomButtonWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: Color.fromARGB(255, 187, 187, 187),
        ),
        Text(
          title,
          style: TextStyle(color: Color.fromARGB(255, 187, 187, 187)),
        )
      ],
    );
  }
}
