import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';

import '../video_list.dart';

class VideoDetail extends StatefulWidget {
  final YoutubeModel detail;

  const VideoDetail({Key key, @required this.detail}) : super(key: key);

  @override
  _VideoDetailState createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _layouts =
    [
      _videoInfo(),
      _channelInfo(),
      _moreInfo(),
      _space(),
      VideoList(listData: youtubeData,)
    ];

    if(MediaQuery.of(context).orientation == Orientation.landscape){
      _layouts.clear();
    }
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
        _buildVideoPlayer(context),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: _layouts,
          ),
        )
      ],
    ));
  }

  Widget _buildVideoPlayer(BuildContext context) {
    return Container(

        margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).orientation == Orientation.portrait ? 200.0 :  MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
        decoration: BoxDecoration(

            image: DecorationImage(
                image: NetworkImage(widget.detail.thumbNail),
                fit: BoxFit.fill)));
  }

  Widget _videoInfo() {

    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){},
            child: ListTile(

              title: Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Text(
                  widget.detail.title,
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              subtitle: Text(
                widget.detail.viewCount,
                style: TextStyle(fontSize: 12.0),
              ),
              trailing: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Icon(
                  Icons.expand_more_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          Container(

            padding: const EdgeInsets.only(top: 3.0, left: 5.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildButtonColumn(
                    Icons.thumb_up_outlined, widget.detail.likeCount),
                _buildButtonColumn(
                    Icons.thumb_down_outlined, widget.detail.dislikeCount),
                _buildButtonColumn(Icons.share_outlined, "Share"),
                _buildButtonColumn(Icons.download_outlined, "Download"),
                _buildButtonColumn(Icons.library_add_outlined, "Save"),
              ],
            ),
          ), SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  Widget _buildButtonColumn(IconData icon, String text) {
    return Column(
      children: <Widget>[
        InkWell(
          customBorder: new CircleBorder(),
          onTap: (){},
          child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Icon(
                icon,
                color: Colors.black87,
                size: 20.0,
              )),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black87, fontSize: 12.0),
        ),
      ],
    );
  }

  Widget _channelInfo() {
    return Container(

      decoration: BoxDecoration(

        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),

      child: Row(

        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: (){},
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(widget.detail.channelAvatar),
                  radius: 18,
                ),
                title: Text(
                  widget.detail.channelTitle,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  widget.detail.subscriberCount + " subscribers",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ),
          ),

          FlatButton(
              height: 72.0,
              child: Text(
                "SUBSCRIBE",
                style: TextStyle(fontSize: 16.0, color: Colors.red[700],),
              ),
              onPressed: () {},

            materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
        ],
      ),
    );
  }

  Widget _space() {
    return SizedBox(height:10.0,);
  }

  Widget _moreInfo() {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(

          border: Border(

            bottom: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Comments", style: TextStyle(color: Colors.black87)),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text("495", style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.unfold_more_outlined,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 8.0),
              child: Row(children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 28.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      height: 1,
                      fontSize: 12.0,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.grey[200], width: 0.0),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: 'Add a public comment...',
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
