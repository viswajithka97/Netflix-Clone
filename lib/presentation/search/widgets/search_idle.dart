import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';

const IdleList = [];

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SearchTextWidget(
        title: "Top Searches",
      ),
      const Gap(
        H: 10,
      ),
      Expanded(
          child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => const TopSearchItemTile(
          imgUrl: "",
          title: "",
        ),
        separatorBuilder: (context, index) => const Gap(
          H: 10,
        ),
        itemCount: IdleList.length,
      )),
    ]);
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imgUrl;

  const TopSearchItemTile({Key? key, required this.imgUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageBase = "https://image.tmdb.org/t/p/w500";
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: 80,
      // decoration: BoxDecoration(color: Colors.grey),
      child: Row(children: [
        Container(
          height: 80,
          width: screenWidth * 0.33,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageBase + imgUrl,
                  ))),
        ),
        const Gap(
          W: 8,
        ),
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(color: whiteColor, fontSize: 18),
          ),
        ),
        // IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       CupertinoIcons.play_arrow,
        //       color: whiteColor,
        //     ))

        const CircleAvatar(
          radius: 20,
          backgroundColor: whiteColor,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.play_arrow_rounded,
              color: whiteColor,
            ),
          ),
        )
      ]),
    );
  }
}
