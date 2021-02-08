import 'package:flutter_yt_music_clone/widgets/music_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yt_music_clone/data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MusicCarousel(
            title: 'Your Favorites',
            musicList: recentlyPlayed,
          ),
          MusicCarousel(
            title: 'Mixed for You',
            musicList: mixedForYou,
          ),
          MusicCarousel(
            title: 'Mixed for You',
            musicList: mixedForYou,
          ),
        ],
      ),
    );
  }
}
