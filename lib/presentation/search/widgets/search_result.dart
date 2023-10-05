import 'package:flutter/material.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextWidget(title: "Movies & TV"),
        const Gap(
          H: 10,
        ),
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 2 / 3,
          children: List.generate(20, (index) {
            return const MainPosterCard(
              imgUrl: "",
            );
          }),
        ))
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
