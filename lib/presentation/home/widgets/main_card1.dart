// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainCard1 extends StatelessWidget {
  const MainCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 110,
      // child: FutureBuilder(
      //     future: MovieDB().discoverTV(),
      //     builder: (BuildContext, AsyncSnapshot<List<Results>> discovertv) {
      //       if (discovertv.data == null) {
      //         return const SizedBox(
      //             height: 50, width: 50, child: CircularProgressIndicator());
      //       }
      //       return ListView.separated(
      //           shrinkWrap: true,
      //           scrollDirection: Axis.horizontal,
      //           separatorBuilder: (context, index) => const Gap(
      //                 W: 10,
      //                 H: 0,
      //               ),
      //           itemCount: discovertv.data!.length,
      //           itemBuilder: (context, index) {
      //             return GestureDetector(
      //               child: Column(
      //                 children: [
      //                   Stack(
      //                     children: [
      //                       Container(
      //                         width: 110,
      //                         height: 160,
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(5),
      //                             image: DecorationImage(
      //                                 fit: BoxFit.fill,
      //                                 image: NetworkImage(
      //                                     "https://image.tmdb.org/t/p/original/${discovertv.data![index].posterPath}"))),
      //                       ),
      //                       Positioned.fill(
      //                         child: Align(
      //                           alignment: Alignment.center,
      //                           child: Container(
      //                             height: 50,
      //                             width: 50,
      //                             decoration: BoxDecoration(
      //                               border:
      //                                   Border.all(color: whiteColor, width: 1),
      //                               borderRadius: BorderRadius.circular(50),
      //                               color: Colors.black.withOpacity(0.5),
      //                             ),
      //                             child: const Padding(
      //                               padding: EdgeInsets.only(left: 5.0),
      //                               child: Icon(CupertinoIcons.play_fill,
      //                                   size: 40, color: whiteColor),
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                       Positioned.fill(
      //                         child: Align(
      //                           alignment: Alignment.bottomCenter,
      //                           child: Wrap(
      //                             children: [
      //                               Container(
      //                                 height: 2,
      //                                 width: index % 2 == 0 ? 110 : 70,
      //                                 decoration: const BoxDecoration(
      //                                     color: Colors.red),
      //                               ),
      //                               Container(
      //                                 color: Colors.black.withOpacity(.8),
      //                                 height: 35,
      //                                 width: 130.0,
      //                                 child: const Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceBetween,
      //                                   children: [
      //                                     Icon(
      //                                       Icons.info_outline,
      //                                       size: 30,
      //                                       color: whiteColor,
      //                                     ),
      //                                     Icon(
      //                                       Icons.more_vert,
      //                                       color: whiteColor,
      //                                       size: 30,
      //                                     )
      //                                   ],
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             );
      //           });
      //     }),
    );
  }
}
