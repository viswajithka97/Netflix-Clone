import 'package:flutter/material.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/detailed_screen/detailed_screen.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

final moviesList = [];

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextWidget(title: title),
        const Gap(
          H: 5,
        ),
        LimitedBox(
            maxHeight: 160,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(
                      W: 10,
                    ),
                itemCount: moviesList.length,
                itemBuilder: (context, index) {
                  List movieList = [];

                  // movieList.shuffle();

                  final _CurrentMovie = movieList[index];

                  final _CurrentMoviePoster =
                      imageBase + _CurrentMovie.posterPath!;

                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detailedscreen(
                                index: index,
                              )));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 110,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(_CurrentMoviePoster))),
                        ),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
