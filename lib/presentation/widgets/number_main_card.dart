import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/homebloc_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

class MainNumberCard extends StatelessWidget {
  const MainNumberCard({Key? key, required this.title,})
      : super(key: key);
  final String title;
  
  

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
          child: BlocBuilder<HomeblocBloc, HomeblocState>(
            builder: (context, state) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(
                  W: 0,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                   final _CurrentMovie = state.moviesList![index];
                      final _CurrentMoviePoster =
                          imageBase + _CurrentMovie.posterPath.toString();
                   return Column(
                  children: [
                    Stack(
                      // alignment: Alignment.bottomLeft,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 30,
                              height: 160,
                            ),
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
                        Positioned(
                          // left: 5,
                          top: 50,
                          child: BorderedText(
                            strokeColor: whiteColor,
                            strokeWidth: 2,
                            child: Text(
                              "${index + 1}",
                              style: const TextStyle(
                                fontSize: 120,
                                color: blackColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                );
                }
              );
            },
          ),
        )
      ],
    );
  }
}
