import 'package:altvideos/views/common_widgets/mini_title.dart';
import 'package:altvideos/views/common_widgets/video_card.dart';
import 'package:altvideos/views/common_widgets/video_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MiniTitle(
            title: 'RECENTLY PLAYED',
          ),
          SizedBox(
            height: 200 + 20,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  VideoCard(),
                  VideoCard(),
                  VideoCard(),
                  VideoCard(),
                ],
              ),
            ),
          ),
          MiniTitle(
            title: 'NEWLY ADDED',
          ),
          VideoTile(),
          VideoTile(),
          VideoTile(),
          VideoTile(),
          VideoTile(),
          VideoTile(),
        ],
      ),
    );
  }
}
