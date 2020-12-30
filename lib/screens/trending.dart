import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';

import '../video_list.dart';

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        Container(
          height: 100.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildButtonColumn(Icons.local_fire_department_outlined, "Trending"),
              _buildButtonColumn(Icons.music_note_outlined, "Music"),
              _buildButtonColumn(Icons.live_tv_outlined, "Live"),
              _buildButtonColumn(Icons.videogame_asset_outlined, "Gaming"),
              _buildButtonColumn(Icons.insert_drive_file_outlined, "News"),
              _buildButtonColumn(Icons.local_movies_outlined, "Movies"),
            ]
            ,
          )
        ),
        VideoList(listData: youtubeData),
      ],
    );
  }
}

Widget _buildButtonColumn(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          customBorder: new CircleBorder(),
          onTap: (){},

          splashColor: Colors.grey[900],
          child: Container(
            width: 50.0,
              height: 50.0,
              padding: const EdgeInsets.only(bottom:8.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.7),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30.0,

              )),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black87, fontSize: 12.0),
        ),
      ],
    ),
  );
}
