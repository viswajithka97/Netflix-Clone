import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/common.dart';
import 'package:netflix/core/strings.dart';
// import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

const videoLIst = [];

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          videoLIst.length,
          (index) => VideoListItems(
            index: index,
            key: Key(index.toString()),
          ),
        ),
      )),
    );
  }
}

class VideoListItems extends StatelessWidget {
  const VideoListItems({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    const posterPath = "";
    return Stack(
      // alignment: Alignment.bottomt,
      children: [
        Container(
          // color: Colors.accents[index],
          // decoration: BoxDecoration(image: ),
          child: FastlaughVideoPlayer(url: "", onStateChanged: (bool) {}),
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
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: posterPath == ""
                            ? null
                            : NetworkImage(imageBase + posterPath),
                      ),
                      const Gap(
                        H: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const VideoActionIconWidget(
                            title: "LOL", icon: Icons.emoji_emotions),
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
                          // const movieName = "";
                          // Share.share(movieName);
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
              : const Center(
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
