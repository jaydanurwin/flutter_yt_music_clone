import 'package:meta/meta.dart';

class Music {
  final String name;
  final String assetImagePath;
  final String type;
  final String artist;

  const Music({
    @required this.name,
    @required this.assetImagePath,
    @required this.type,
    @required this.artist,
  });
}
