// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgets = [
    const _SmartDownloads(),
    const Gap(
      H: 60,
    ),
    _SectionTwo(),
    const Gap(
      H: 60,
    ),
    const _SectionThree()
  ];

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: ListView.separated(
            itemBuilder: (context, index) => _widgets[index],
            separatorBuilder: (context, index) => const Gap(),
            itemCount: _widgets.length,
          ),
        ));
  }
}

class _SectionTwo extends StatelessWidget {
  _SectionTwo({
    Key? key,
  }) : super(key: key);

  final samplePosters = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/nj5HmHRZsrYQEYYXyAusFv35erP.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg"
  ];

  String imageBase = "https://image.tmdb.org/t/p/w500";
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<DownloadsBloc>(context)
    //       .add(const DownloadsEvent.getDownloadsImage());
    // });
    // BlocProvider.of<DownloadsBloc>(context)
    //     .add(const DownloadsEvent.getDownloadsImage());

    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for You",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: whiteColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Gap(
          H: 20,
        ),
        Center(
          child: Container(
            constraints: const BoxConstraints(minWidth: 150, maxWidth: 300),
            child: const Text(
              "We will download a personlized selection of movies and shows for you, so there is always something watch on your device",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: greyTextColor,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const Gap(
          H: 20,
        ),
        SizedBox(
          height: 400,
          width: size.width,
          // color: whiteColor,
          child: Stack(alignment: Alignment.center, children: [
            Center(
              child: CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: greyColor,
              ),
            ),
            DownloadsImageWidget(
              img: samplePosters[0],
              margin: const EdgeInsets.only(
                right: 150,
              ),
              angle: -15,
            ),
            DownloadsImageWidget(
              img: samplePosters[1],
              margin: const EdgeInsets.only(
                left: 150,
              ),
              angle: 15,
            ),
            DownloadsImageWidget(
              img: samplePosters[2],
              margin: const EdgeInsets.only(
                right: 0,
                top: 10,
              ),
              angle: 0,
              imgHeight: 0.6,
              imgWidth: 0.4,
            ),
          ]),
        ),
      ],
    );
  }
}

class _SectionThree extends StatelessWidget {
  const _SectionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: buttonColor,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                "Set up",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: whiteColor,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See what you can download",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.settings_outlined,
          color: whiteColor,
        ),
        Gap(
          W: 8,
        ),
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    // required this.size,
    required String this.img,
    required this.margin,
    required double this.angle,
    double this.imgHeight = 0.58,
    double this.imgWidth = 0.35,
  }) : super(key: key);
  final img;
  final margin;
  final angle;

  final imgHeight;
  final imgWidth;

  // final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          margin: margin,
          width: size.width * imgWidth,
          height: size.width * imgHeight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage(img))),
        ));
  }
}

// width: size.width * 0.35,
//   height: size.width * 0.5,
