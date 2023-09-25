import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../my_theme_data.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
              margin: EdgeInsets.only(
                top: 100.0,
              ),
              child: Image.asset("assets/images/radio_image.png")),
          SizedBox(
            height: 50,
          ),
          Text("اذاعه القران الكريم",style: Theme.of(context).textTheme.bodySmall,),

          Container(
            margin: EdgeInsets.only(
              top: 40,
            ),
            padding: EdgeInsets.only(
              left: 100,
            ),
            child: Row(
              children: [
                Icon(Icons.skip_previous,color: MyThemeData.primary,size: 30.0,),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.play_arrow_sharp,color: MyThemeData.primary,size: 50.0,),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.skip_next,color: MyThemeData.primary,size: 30.0,),
              ],
            ),
          ),
        ]
    );
  }
}