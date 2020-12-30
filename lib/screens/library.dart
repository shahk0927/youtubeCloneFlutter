import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';
import 'package:youtube_clone/video_list.dart';

class LibraryScreen extends StatelessWidget {

  String valueChoose;
  List listItem = ["Recently added", "A-Z"];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        _buildRecent(),
        _buildPersonal(),
        _buildPlaylist(),
      ],
    );
  }

  Widget _buildRecent(){

    return Container(
      height: 202.0,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey[300]))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text("Recent",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),),
          ),
          Expanded(
            child: VideoList(
              listData: youtubeData,
              isHorizontalList: true,
            ),
          )
        ],
      ),
    );
  }

  _buildBottomBorder(){
    BoxDecoration(

      border: Border(
        bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
      ),
    );

  }
  Widget _buildPersonal(){

    List<Map> items =[
      {"name": "History", "icon": Icon(Icons.history_outlined , color: Colors.black,)},
      {"name": "Your videos", "icon": Icon(Icons.slideshow_outlined, color: Colors.black)},
      {"name": "Your Movies and shows", "icon": Icon(Icons.local_movies_outlined, color: Colors.black)},
      {"name": "Watch later",
        "icon": Icon(Icons.watch_later_outlined, color: Colors.black),
            "extra": "255 unwatched videos"
      }
    ];

    return Container(

      padding: const EdgeInsets.all(4.0),
      height: 250.0,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey[300]))
      ),
        child: Column(

          children: items.map((e) => ListTile(onTap: (){},

            title:Text(e["name"]),
            leading: e["icon"],
            subtitle: e["extra"] != null ? Text(e["extra"]): null,

          )).toList(),
        ),
      );
  }

  Widget _buildPlaylist(){
    return Container(
      decoration: _buildBottomBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
        Text("Playlists",style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),),
                DropdownButton(
                  hint: Text(listItem[0]),

                  icon: Icon(Icons.expand_more_outlined),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                  ),
                  value: valueChoose,
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                    onChanged: (newValue){
                     return valueChoose=newValue;
                    },

                ),
              ],
            ),
          ),

          ListTile(
            onTap: (){},
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add,color: Colors.lightBlue[500],),
              ],
            ),
            title: Text("New Playlist", style: TextStyle(
                color: Colors.lightBlue[500],
              fontSize: 17.0
            ),),

          ),
          ListTile(
            onTap: (){},
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.thumb_up_outlined,color: Colors.black,),
              ],
            ),
            title: Text("Liked videos"),
            subtitle: Text("10 videos"),
          )
        ],
      ),
    );

  }
}
