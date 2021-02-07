import 'package:flutter/material.dart';
import 'package:flutter_yt_music_clone/models/models.dart';

class MusicCard extends StatelessWidget {
  final Music music;

  const MusicCard({Key key, this.music}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image(
                width: 180,
                height: 180,
                image: AssetImage(music.assetImagePath),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              music.name,
              style: Theme.of(context).textTheme.headline6,
              // TODO figure out text overflow for this layout
              // overflow: TextOverflow.ellipsis,
              // maxLines: 1,
              // softWrap: true,
            ),
            Text(
              music.type + ' • ' + music.artist,
              style: Theme.of(context).textTheme.subtitle1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
