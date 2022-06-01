import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix/infrastructure/apis.dart';
import 'package:netflix/presentation/home/category_model/categories/genre.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            FutureBuilder(
                future: MovieDB().category(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<Genre>> categoryList) {
                  if (categoryList.data == null) {
                    return CircularProgressIndicator();
                  }
                  return ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 25,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(height: index == 0 ? 100 : 0),
                          Text(
                            categoryList.data![index].name.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            color: Colors.transparent,
                            height: index == categoryList.data!.length - 1
                                ? 200
                                : 0,
                          )
                        ],
                      );
                    },
                    itemCount: categoryList.data!.length,
                  );
                }),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const CircleAvatar(
                radius: 25,
                child: Icon(
                  Icons.close,
                  size: 29,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// final List<String> categoryList = [
//   'Home',
//   'My List',
//   'Available for Download',
//   'Hindi',
//   'Tamil',
//   'Punjabi',
//   'Telugu',
//   'Malayalam',
//   'Marathi',
//   'Bengali',
//   'English',
//   'Action',
//   'Anime',
//   'Award Winners',
//   'Biographical',
//   'Bollywood',
//   'Blockbusters',
//   'Children & Family',
//   'Comedies',
//   'Documentaries',
//   'Dramas',
//   'Fantasy',
//   'Hollywood',
//   'Horror',
//   'International',
//   'Indian',
//   'Music & Musicals',
//   'Reality & Talk',
//   'Romance',
//   'Sci-Fi',
//   'Stand-up',
//   'Thrillers',
// ];
