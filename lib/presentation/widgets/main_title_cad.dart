import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/homebloc_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/detailed_screen/detailed_screen.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard(
      {Key? key, required String this.title, required String this.poster})
      : super(key: key);

  final title;
  final poster;

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
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(color: greyColor),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text(
                    "Something went wrong",
                    style: TextStyle(color: greyColor),
                  ),
                );
              } else if (state.moviesList!.isEmpty) {
                return const Center(
                  child: Text(
                    "Something Occured while fetching Data",
                    style: TextStyle(color: greyColor),
                  ),
                );
              } else {
                return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const Gap(
                          W: 10,
                        ),
                    itemCount: state.moviesList!.length,
                    itemBuilder: (context, index) {
                      final _CurrentMovie = state.moviesList![index];
                      final _CurrentMoviePoster =
                          imageBase + _CurrentMovie.posterPath.toString();
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detailedscreen(
                                    index: index,
                                    movieData: _CurrentMovie,
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
                                      image:
                                          NetworkImage(_CurrentMoviePoster))),
                            ),
                          ],
                        ),
                      );
                    });
              }
            },
          ),
        )
      ],
    );
  }
}
