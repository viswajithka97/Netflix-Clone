import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';

class Detailedscreen extends StatelessWidget {
  const Detailedscreen({Key? key, this.index}) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    const releasYear = "";

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(""))),
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                // color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.cast_outlined,
                                  color: whiteColor,
                                  size: 20,
                                )),
                          ),
                          const Gap(
                            W: 15,
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.close,
                                  color: whiteColor,
                                  size: 20,
                                )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Preview",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.volume_mute_outlined,
                                  color: whiteColor,
                                  size: 35,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "MovieName",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const Gap(
                H: 5,
              ),
              Text(
                releasYear.toString(),
                style: const TextStyle(
                    color: whiteColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              const Gap(
                H: 5,
              ),
              Text(
                "#${index + 1} in Movies Today ",
                style: const TextStyle(
                    color: whiteColor,
                    fontSize: 19,
                    fontWeight: FontWeight.w700),
              ),
              const Gap(
                H: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(whiteColor),
                    foregroundColor: MaterialStateProperty.all(blackColor),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: blackColor,
                        size: 30,
                      ),
                      Gap(
                        W: 5,
                      ),
                      Text(
                        "Play",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      )
                    ],
                  )),
              const Gap(
                H: 5,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(greyColor),
                    foregroundColor: MaterialStateProperty.all(whiteColor),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.download_sharp,
                        color: whiteColor,
                        size: 25,
                      ),
                      Gap(
                        W: 5,
                      ),
                      Text(
                        "Download",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  )),
              const Gap(
                H: 10,
              ),
              Text(
                "".toString(),
                maxLines: 5,
                style: const TextStyle(
                  height: 1.3,
                  color: whiteColor,
                  fontSize: 15,
                ),
              ),
              const Gap(
                H: 20,
              ),
              const SizedBox(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _HomeCustomButtonWidget(title: "My List", icon: Icons.add),
                    Gap(
                      W: 40,
                    ),
                    _HomeCustomButtonWidget(
                        title: "Rate", icon: Icons.thumb_up_outlined),
                    Gap(
                      W: 40,
                    ),
                    _HomeCustomButtonWidget(title: "Share", icon: Icons.share),
                  ],
                ),
              )
            ]),
          )
        ],
      )),
    );
  }
}

class _HomeCustomButtonWidget extends StatelessWidget {
  const _HomeCustomButtonWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 35,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        const Gap(
          H: 5,
        ),
        Text(
          title,
          style: const TextStyle(color: Color.fromARGB(255, 187, 187, 187)),
        )
      ],
    );
  }
}
