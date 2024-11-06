import 'package:flutter/material.dart';

class MiniTitle extends StatelessWidget {
  final String title;
  const MiniTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 1,
            color: Colors.grey,
            width: 20,
          ),
          Text(" $title "),
          Expanded(
            child: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
