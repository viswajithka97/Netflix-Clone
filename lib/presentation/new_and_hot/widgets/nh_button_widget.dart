import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';

class NhButtonWidget extends StatelessWidget {
  const NhButtonWidget({Key? key, required this.icon, required this.title})
      : super(key: key);
  final icon;
  final title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 25,
          color: whiteColor,
        ),
        Gap(
          H: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: greyTextColor,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
