
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_clone/models/youtube_model.dart';
import 'package:youtube_clone/screens/video_detail.dart';

class VideoList extends StatelessWidget {
  final List<YoutubeModel> listData;
  final bool isHorizontalList;

  const VideoList({this.listData, this.isHorizontalList = false});

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    if (isHorizontalList) {
      return ListView.separated(
        padding: const EdgeInsets.only(
            left: 16.0, top: 10.0, bottom: 20.0, right: 18.0),
        scrollDirection: Axis.horizontal,
        itemCount: listData.length,
        itemBuilder: (context, index) {
          if (deviceOrientation == Orientation.portrait) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VideoDetail(
                      detail: listData[index],
                    ),
                  ));
                },
                child: _buildHorizontalList(context, index));
          } else {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VideoDetail(
                      detail: listData[index],
                    ),
                  ));
                },
                child: _buildHorizontalList(context, index));
          }
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 18);
        },
      );
      //_buildHorizontalList(context, index)
    } else {
      return ListView.separated(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            if (deviceOrientation == Orientation.portrait) {
              return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VideoDetail(
                        detail: listData[index],
                      ),
                    ));
                  },
                  child: _buildPortraitList(context, index));
            } else {
              return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VideoDetail(
                        detail: listData[index],
                      ),
                    ));
                  },
                  child: _buildLandscapeList(context, index));
            }
          },
          separatorBuilder: (context, index) => Divider(
                height: 1.0,
                color: Colors.grey,
              ),
          itemCount: listData.length);
    }
  }

  // Home Page Portrait
  Widget _buildPortraitList(BuildContext context, int index) {
    return Column(

      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(listData[index].thumbNail),
                  fit: BoxFit.cover)),
        ),

        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(
              bottom: 8.0, left: 8.0, right: 8.0, top: 0.0),
          leading: Container(
            margin: EdgeInsets.only(left: 5.0),
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: NetworkImage(listData[index].channelAvatar),
            ),
          ),

          title: Text(
            listData[index].title,
            style:
                TextStyle(color: Colors.black, fontSize: 13.0,fontWeight: FontWeight.w600,),
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top:2.0),
            child: Row(
              children: <Widget>[
                Text(
                  "${listData[index].channelTitle} ",
                  style: TextStyle(fontSize: 11.0,),
                ),
                Icon(
                  Icons.brightness_1_rounded, size: 2.0,),
                Text(
                  " ${listData[index].viewCount} ",
                  style: TextStyle(fontSize: 11.0,),
                ),
                Icon(
                  Icons.brightness_1_rounded, size: 2.0,),
                Text(
                  " ${listData[index].publishedTime}",
                  style: TextStyle(fontSize: 11.0,),
                ),
              ],
            ),
          ),

          trailing: Container(
            child: Icon(Icons.more_vert_outlined,size: 18.0,color: Colors.black54,),
            width: 15.0,
            margin: EdgeInsets.only(bottom: 18.0),
          ),
        ),
      ],
    );
  }

  Widget _buildLandscapeList(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Row(
        children: <Widget>[
          Container(
            //width: MediaQuery.of(context).size.width/2,
            width: 250.0,
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(listData[index].thumbNail),
                    fit: BoxFit.cover)),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(left: 8.0, right: 8.0),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    listData[index].title,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                subtitle: Text(
                  "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}",
                  style: TextStyle(fontSize: 11.0),
                ),
                trailing: Container(child: Icon(Icons.more_vert_outlined)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(listData[index].channelAvatar),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }

  Widget _buildHorizontalList(BuildContext context, int index) {
    // Horizontal Display
    return Container(
      width: 305.0 / 2.2,
      // One column element
      child: Column(
        children: <Widget>[
          // Thumbnail Container
          Container(
              padding: const EdgeInsets.only(top: 4.0),
              margin: const EdgeInsets.only(bottom: 2.0),
              width: 336.0 / 2.2,
              height: 188 / 2.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(listData[index].thumbNail),
                ),
              )),
          // Title and Icon Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                // Title and Subtitle Column
                child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          listData[index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        listData[index].channelTitle,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[700],
                        ),
                      ),
                    ]),
              ),
              Icon(
                Icons.more_vert_outlined,
                size: 16,
                color: Colors.black87,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
