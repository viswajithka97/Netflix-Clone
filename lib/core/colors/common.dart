import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final W;
  final H;
  const Gap({Key? key, double this.H = 0, double this.W = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: H,
      width: W,
    );
  }
}
