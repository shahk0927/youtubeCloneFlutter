import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';
import 'package:youtube_clone/video_list.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoList(listData: youtubeData,);
  }
}
