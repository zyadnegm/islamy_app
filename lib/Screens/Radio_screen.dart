import 'package:apps/my_theme.dart';
import 'package:flutter/material.dart';

class Radio_screen extends StatelessWidget {
  static const String routeName = "radio";

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment:CrossAxisAlignment.center ,
        children: [
          Container(
              width: 250,
              height: 250,
              alignment: Alignment.center,
              child: Image.asset("asset/image/radio_photo.png")),
          Text(
            "اذاعه القران الكريم",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: Row(
              children: [
                Expanded(
                    child: Icon(Icons.skip_next,
                        size: 35, color: My_theme.primarycolor)),
                Expanded(
                    child: Icon(Icons.play_arrow,
                        size: 60, color: My_theme.primarycolor)),
                Expanded(
                    child: Icon(Icons.skip_previous,
                        size: 35, color: My_theme.primarycolor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
