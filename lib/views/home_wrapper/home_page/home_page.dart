import 'package:altvideos/views/common_widgets/video_card.dart';
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
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                VideoCard(),
                VideoCard(),
                VideoCard(),
                VideoCard(),
              ],
            ),
          ),
          Column()
        ],
      ),
    );
  }
}
