import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/categories.dart';
import 'package:netflix/presentation/home/widgets/main_card1.dart';
import 'package:netflix/presentation/search/widgets/search_text_widget.dart';
import 'package:netflix/presentation/widgets/main_title_cad.dart';
import 'package:netflix/presentation/widgets/number_main_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: ((context, value, child) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: NotificationListener<UserScrollNotification>(
                onNotification: ((notification) {
                  final ScrollDirection direction = notification.direction;

                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                }),
                child: Stack(
                  children: [
                    ListView(
                      children: const [
                        BackGroundCard(),
                        Gap(
                          H: 10,
                        ),
                        SearchTextWidget(title: 'Continue Watching'),
                        SizedBox(
                          height: 5,
                        ),
                        MainCard1(),
                        MainTitleCard(
                          title: "Popular on Netflix",
                        ),
                        Gap(
                          H: 10,
                        ),
                        MainTitleCard(
                          title: "New Releses",
                        ),
                        Gap(
                          H: 10,
                        ),
                        MainNumberCard(
                          title: "Top 10 in India Today",
                        ),
                        Gap(
                          H: 10,
                        ),
                        MainTitleCard(
                          title: "Tense Dramas",
                        ),
                        Gap(
                          H: 10,
                        ),
                        MainTitleCard(
                          title: "South Indian Cinema",
                        ),
                      ],
                    ),
                    scrollNotifier.value
                        ? Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1)
                                ])),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.network(
                                        "https://1000logos.net/wp-content/uploads/2017/05/Netflix-Logo-2006.png",
                                        width: 50,
                                        errorBuilder: (BuildContext context,
                                                Object img, StackTrace? str) =>
                                            Container(
                                          width: 40,
                                          height: 40,
                                          color: const Color.fromARGB(
                                              255, 20, 20, 20),
                                        ),
                                      ),
                                      const Expanded(child: Gap()),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.cast_rounded,
                                            size: 25,
                                            color: whiteColor,
                                          )),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                              Colors.red,
                                              Colors.yellow
                                            ])),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "TV Shows",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Text("Movies",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500)),
                                      LimitedBox(
                                        child: Row(children: [
                                          TextButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (ctx) =>
                                                      const Categories());
                                            },
                                            child: const Text("Categories",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                          ),
                                          const Icon(
                                            Icons.arrow_drop_down_rounded,
                                            color: whiteColor,
                                          )
                                        ]),
                                      )
                                    ],
                                  )
                                ]),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
