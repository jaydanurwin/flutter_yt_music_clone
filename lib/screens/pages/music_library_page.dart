import 'package:flutter_yt_music_clone/constants.dart';
import 'package:flutter_yt_music_clone/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yt_music_clone/widgets/library_category_tile.dart';
import 'package:flutter_yt_music_clone/widgets/music_carousel.dart';
import 'package:flutter_yt_music_clone/y_t_music_icons.dart';

class MusicLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            margin: EdgeInsets.all(0),
            elevation: 0,
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(24, 0, 16, 0),
              tileColor: kSecondaryBackgroundColor,
              onTap: () {},
              title: Text(
                'Recent Activity',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.30,
              color: kSecondaryBackgroundColor,
              child: MusicCarousel(
                musicList: recentlyPlayed,
              )),
          SizedBox(
            height: 24.0,
          ),
          LibraryCategoryTile(
              tileText: 'Downloads', tileIcon: YTMusic.download),
          LibraryCategoryTile(
              tileText: 'Playlists', tileIcon: YTMusic.playlist_play),
          LibraryCategoryTile(tileText: 'Albums', tileIcon: YTMusic.album),
          LibraryCategoryTile(tileText: 'Songs', tileIcon: YTMusic.music_note),
          LibraryCategoryTile(tileText: 'Artists', tileIcon: YTMusic.artist),
          LibraryCategoryTile(
              tileText: 'Subscriptions', tileIcon: YTMusic.subscriptions),
        ],
      ),
    );
  }
}
