import 'package:flutter_yt_music_clone/models/models.dart';
import 'package:flutter_yt_music_clone/widgets/music_card.dart';
import 'package:flutter/material.dart';

class MusicCarousel extends StatelessWidget {
  final String title;
  final List<Music> musicList;

  const MusicCarousel({Key key, this.title, this.musicList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title == null
              ? SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              scrollDirection: Axis.horizontal,
              itemCount: musicList.length,
              itemBuilder: (BuildContext context, int index) {
                final Music music = musicList[index];
                return MusicCard(music: music);
              },
            ),
          ),
        ],
      ),
    );
  }
}
