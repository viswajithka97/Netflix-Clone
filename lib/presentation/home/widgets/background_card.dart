import 'package:flutter/material.dart';
import 'package:netflix/application/home/homebloc_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({Key? key, required this.state}) : super(key: key);

  final HomeblocState state;

  @override
  Widget build(BuildContext context) {
    final moviePoster = imageBase + state.moviesList![0].posterPath.toString();

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(moviePoster))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const HomeCustomButtonWidget(
                icon: Icons.add,
                title: "My List",
              ),
              _PlayButton(),
              const HomeCustomButtonWidget(
                icon: Icons.info_outline,
                title: "Info",
              ),
            ],
          ),
        )
      ],
    );
  }
}

TextButton _PlayButton() {
  return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(whiteColor),
        foregroundColor: MaterialStateProperty.all(blackColor),
      ),
      onPressed: () {},
      icon: const Icon(Icons.play_arrow),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: const Text(
          "Play",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ));
}
