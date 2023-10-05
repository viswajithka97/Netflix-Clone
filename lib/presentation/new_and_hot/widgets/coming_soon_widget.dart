import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/new_and_hot/widgets/nh_button_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;

  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var _month = "";

    if (month == "01") {
      _month = "JAN";
    } else if (month == "02") {
      _month = "FEB";
    } else if (month == "03") {
      _month = "MAR";
    } else if (month == "04") {
      _month = "APR";
    } else if (month == "05") {
      _month = "MAY";
    } else if (month == "06") {
      _month = "JUN";
    } else if (month == "07") {
      _month = "JUL";
    } else if (month == "08") {
      _month = "AUG";
    } else if (month == "09") {
      _month = "SEP";
    } else if (month == "10") {
      _month = "OCT";
    } else if (month == "11") {
      _month = "NOV";
    } else if (month == "12") {
      _month = "DEC";
    }

    return Column(
      children: [
        const Gap(
          H: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              // height: 500,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        _month,
                        style: const TextStyle(
                          letterSpacing: 2,
                          color: greyTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Gap(
                        H: 5,
                      ),
                      Text(
                        day,
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              width: size.width - 80,
              // height: 500,
              // decoration: const BoxDecoration(color: greyColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(posterPath))),
                      ),
                      SizedBox(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: greyColor,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  child: Text(
                                    "U/A 13+",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.volume_off,
                                    color: whiteColor,
                                    size: 28,
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(
                    H: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            movieName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: greyTextColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const NhButtonWidget(
                            icon: Icons.notifications_outlined,
                            title: "Remind Me"),
                        const Gap(
                          W: 20,
                        ),
                        const NhButtonWidget(
                            icon: Icons.info_outlined, title: "Info"),
                        const Gap(
                          W: 10,
                        ),
                      ],
                    ),
                  ),
                  const Gap(
                    H: 5,
                  ),
                  SizedBox(
                    // padding: EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Coming on $day $_month",
                            style: const TextStyle(color: lightGrey),
                          ),
                          const Gap(
                            H: 15,
                          ),
                          Image.asset(
                            "assets/img/NetFlixOriginal.jpg",
                            width: 80,
                            height: 10,
                            alignment: Alignment.centerLeft,
                          ),
                          Text(
                            movieName,
                            style: const TextStyle(
                                color: whiteColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const Gap(
                            H: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              description,
                              maxLines: 5,
                              style: const TextStyle(
                                  color: greyTextColor, height: 1.3),
                            ),
                          ),
                          const Gap(
                            H: 15,
                          ),
                          const Text(
                            "Action - Thriller - Drama - SciFi - Mystery - Fanatacy",
                            style: TextStyle(
                                color: Color.fromARGB(255, 194, 194, 194),
                                fontWeight: FontWeight.w300),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
