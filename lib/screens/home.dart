import 'package:flutter_yt_music_clone/constants.dart';
import 'package:flutter_yt_music_clone/screens/pages/home_page.dart';
import 'package:flutter_yt_music_clone/screens/pages/music_library_page.dart';
import 'package:flutter_yt_music_clone/y_t_music_icons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Explore Page',
    ),
    MusicLibrary(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Image.asset(
          'assets/images/yt_music_logo.png',
          height: 24.0,
        ),
        actions: <Widget>[
          Icon(Icons.cast),
          SizedBox(
            width: 24.0,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12.0, 12.0, 12.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('./assets/images/profile_photo.jpg'),
              backgroundColor: Colors.grey,
            ),
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kSecondaryBackgroundColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(YTMusic.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(YTMusic.library_icon),
            label: 'Library',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
