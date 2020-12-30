import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/home.dart';
import 'package:youtube_clone/screens/library.dart';
import 'package:youtube_clone/screens/trending.dart';

class YoutubeMain extends StatefulWidget {
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {

  int _currentIndex= 0;

  _onTapped(int index){

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _screens = [

      Home(),
      TrendingScreen(),
      Center(child: Text("Add")),
      Center(child: Text("Subscription")),
      LibraryScreen()
    ];

    return Scaffold(
      // App Bar
      appBar: AppBar(

        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Image.asset('images/youtube_logo.png', width: 98.0, height: 22.0),



        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.cast_outlined),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: (){},
          ),
        ],
      ),

      body: _screens[_currentIndex],
      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 29,
        type: BottomNavigationBarType.fixed,
        //fixedColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        onTap: _onTapped,
        items: [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home,)),
        BottomNavigationBarItem(label: 'Explore', icon: Icon(Icons.explore_outlined)),
        BottomNavigationBarItem(label: 'Add', icon: Icon(Icons.add_circle_outline)),
        BottomNavigationBarItem(label: 'Subscriptions', icon: Icon(Icons.subscriptions_outlined)),
        BottomNavigationBarItem(label: 'Library', icon: Icon(Icons.video_library_outlined)),

      ],
      ),
    );
  }
}
