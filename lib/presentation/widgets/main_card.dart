import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(samplePosters[1]))),
        ),
      ],
    );
  }
}
