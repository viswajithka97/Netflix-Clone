import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/bloc/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageBase = "https://image.tmdb.org/t/p/w500";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextWidget(title: "Movies & TV"),
        const Gap(
          H: 10,
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2 / 3,
                children: List.generate(20, (index) {
                  final movie = state.searchResultData[index];

                  if (movie.posterPath==null) {
                    return const Center(
                      child: CircularProgressIndicator(color: greyColor),
                    );
                  } else if (state.isError) {
                    return const CircularProgressIndicator();
                  } else {
                    return MainPosterCard(
                      imgUrl: imageBase + movie.posterPath!,
                    );
                  }
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

final samplePosters = [
  "https://www.themoviedb.org/t/p/w220_and_h330_face/nj5HmHRZsrYQEYYXyAusFv35erP.jpg",
  "https://www.themoviedb.org/t/p/w220_and_h330_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg",
  "https://www.themoviedb.org/t/p/w220_and_h330_face/bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg"
];

class MainPosterCard extends StatelessWidget {
  final String imgUrl;
  const MainPosterCard({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(imgUrl),
      ),
    ));
  }
}
