import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fastLaugh/fastlaugh_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughBloc>(context).add(const Initialize());
    });

    return Scaffold(
      body: SafeArea(child: BlocBuilder<FastlaughBloc, FastlaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    color: greyColor,
                  ),
                  Gap(
                    H: 20,
                  ),
                  Text(
                    "Loading . . .",
                    style: TextStyle(color: greyColor),
                  ),
                ],
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text("Something went wrong"),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                state.videosList.length,
                (index) => VideoListItemsInheritedWidget(
                    widget: VideoListItems(
                      index: index,
                      key: Key(index.toString()),
                    ),
                    movieData: state.videosList[index]),
              ),
            );
          }
        },
      )),
    );
  }
}

class VideoListItemsInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  VideoListItemsInheritedWidget(
      {Key? key, required this.widget, required this.movieData})
      : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemsInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemsInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemsInheritedWidget>();
  }
}

class VideoListItems extends StatelessWidget {
  const VideoListItems({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final vidoeUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    final posterPath =
        VideoListItemsInheritedWidget.of(context)?.movieData.posterPath;
    return Stack(
      // alignment: Alignment.bottomt,
      children: [
        Container(
          // color: Colors.accents[index],
          // decoration: BoxDecoration(image: ),
          child: FastlaughVideoPlayer(url: vidoeUrl, onStateChanged: (bool) {}),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // LeftSide
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_mute_outlined,
                    size: 30,
                    color: whiteColor,
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: posterPath == null
                            ? null
                            : NetworkImage(imageBase + posterPath),
                      ),
                      const Gap(
                        H: 20,
                      ),
                      BlocBuilder<FastlaughBloc, FastlaughState>(
                        builder: (context, state) {
                          // final _index = index;

                          // return GestureDetector(
                          //   onTap: () {
                          //     BlocProvider.of<FastlaughBloc>(context)
                          //         .add(UnLikeVideo(id: index));
                          //   },
                          //   child: const VideoActionIconWidget(
                          //       title: "LIKED", icon: Icons.favorite),
                          // );

                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<FastlaughBloc>(context)
                                  .add(LikeVideo(id: index));
                            },
                            child: const VideoActionIconWidget(
                                title: "LOL", icon: Icons.emoji_emotions),
                          );
                        },
                      ),
                      const Gap(
                        H: 30,
                      ),
                      const VideoActionIconWidget(
                          title: "My List", icon: Icons.add),
                      const Gap(
                        H: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          final movieName =
                              VideoListItemsInheritedWidget.of(context)
                                  ?.movieData
                                  .title;
                          if (movieName != null) {
                            Share.share(movieName);
                          }
                          ;
                        },
                        child: const VideoActionIconWidget(
                            title: "Share", icon: Icons.share),
                      ),
                      const Gap(
                        H: 30,
                      ),
                      const VideoActionIconWidget(
                          title: "Play", icon: Icons.play_arrow_rounded),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionIconWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionIconWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: whiteColor,
        size: 30,
      ),
      Text(
        title,
        style: const TextStyle(color: whiteColor, fontSize: 13),
      ),
    ]);
  }
}

class FastlaughVideoPlayer extends StatefulWidget {
  final String url;
  final void Function(bool isPlaying) onStateChanged;
  const FastlaughVideoPlayer(
      {Key? key, required this.url, required this.onStateChanged})
      : super(key: key);

  @override
  State<FastlaughVideoPlayer> createState() => _FastlaughVideoPlayerState();
}

class _FastlaughVideoPlayerState extends State<FastlaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  bool playStatus = true;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.url);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
        // playStatus = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (playStatus) {
            _videoPlayerController.pause();
            playStatus = false;
          } else {
            _videoPlayerController.play();
            playStatus = true;
          }
        },
        child: Container(
          // width: double.infinity,
          // height: double.infinity,
          child: _videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController))
              : Center(
                  child: CircularProgressIndicator(color: greyColor),
                ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
