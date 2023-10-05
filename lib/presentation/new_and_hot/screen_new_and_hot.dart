import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everones_watch_widget.dart';

const samplerPosterHorizontal =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/vNnLAKmoczRlNarxyGrrw0KSOeX.jpg";

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hot & New",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          actions: [
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
            // SizedBox(
            //   height: 25,
            //   width: 25,
            //   child: Container(
            //     decoration: const BoxDecoration(
            //         gradient: LinearGradient(
            //             begin: Alignment.topCenter,
            //             end: Alignment.bottomCenter,
            //             colors: [Colors.red, Colors.yellow])),
            //     width: 25,
            //     height: 25,
            //   ),
            // ),
            SizedBox(
                height: 25,
                width: 25,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.card_giftcard))),
            const Gap(
              W: 15,
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: whiteColor,
                    ),
                    labelColor: blackColor,
                    isScrollable: true,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    unselectedLabelColor: whiteColor,
                    labelPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    tabs: const [
                      Tab(
                        text: "🎁 Coming Soon",
                      ),
                      Tab(
                        text: "🔥 Everyone's Watching",
                      ),
                    ]),
              ],
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TabBarView(children: [
            BuldComingSoon(),
            BuildEveryOnesWatching(),
          ]),
        ),
      ),
    );
  }
}

final comingSoonList = [];

class BuldComingSoon extends StatelessWidget {
  const BuldComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // separatorBuilder: ((context, index) => Gap()),
      shrinkWrap: true,
      itemCount: comingSoonList.length,
      itemBuilder: (context, index) {
        final movie = comingSoonList[index];

        if (movie.id == null) return const SizedBox();

        final month = movie.releaseDate!.split("-").elementAt(1);
        final day = movie.releaseDate!.split("-").elementAt(2);

        return ComingSoonWidget(
          id: movie.id.toString(),
          month: month,
          day: day,
          posterPath: imageBase + movie.backdropPath.toString(),
          movieName: movie.originalTitle ?? "not available",
          description: movie.overview ?? "not available",
        );
      },
    );
  }
}

class BuildEveryOnesWatching extends StatelessWidget {
  const BuildEveryOnesWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // separatorBuilder: ((context, index) => Gap()),
      shrinkWrap: true,
      itemCount: comingSoonList.length,
      itemBuilder: (context, index) {
        final movie = comingSoonList[index];

        if (movie.id == null) return const SizedBox();

        final month = movie.releaseDate!.split("-").elementAt(1);
        final day = movie.releaseDate!.split("-").elementAt(2);

        return EveryOnesWatchingWidget(
          id: movie.id.toString(),
          month: month,
          day: day,
          posterPath: imageBase + movie.backdropPath.toString(),
          movieName: movie.originalTitle ?? "not available",
          description: movie.overview ?? "not available",
        );
      },
    );
  }
}
