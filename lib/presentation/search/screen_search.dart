import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';

TextEditingController _controller = TextEditingController();

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    controller: _controller,
                    onChanged: (value) {},
                    placeholder: "Search",
                    placeholderStyle:
                        const TextStyle(color: greyTextColor, fontSize: 18),
                    style: const TextStyle(color: greyTextColor, fontSize: 18),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(5)),
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Icon(
                        CupertinoIcons.search,
                        color: greyTextColor,
                      ),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const SizedBox(
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ),
            const Gap(
              H: 10,
            ),
            const Expanded(
              child: SearchIdleWidget(),
              // child: BlocBuilder<SearchBloc, SearchState>(
              //   builder: (context, state) {
              //     if (state.searchResultData.isEmpty) {
              //       return const SearchIdleWidget();
              //     } else {
              //       return const SearchResultWidget();
              //     }
              //   },
              // ),
            )
          ],
        ),
      )),
    );
  }
}
