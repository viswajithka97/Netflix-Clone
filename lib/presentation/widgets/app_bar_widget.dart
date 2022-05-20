import 'package:flutter/material.dart';

import 'package:netflix/core/colors/common.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast_rounded,
                color: Colors.white,
                size: 25,
              )),
          const Gap(
            W: 10,
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.yellow])),
            width: 25,
            height: 25,
          ),
          // const Gap(
          //   W: 10,
          // ),
        ],
      ),
    );
  }
}
