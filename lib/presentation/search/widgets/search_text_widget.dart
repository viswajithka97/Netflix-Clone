import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class SearchTextWidget extends StatelessWidget {
  final String title;
  const SearchTextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
