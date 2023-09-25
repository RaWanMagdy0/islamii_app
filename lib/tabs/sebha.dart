import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_rotation/animated_rotation.dart';

import '../my_theme_data.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {


  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Container(
              margin: EdgeInsets.only(
                left: 60.0,
              ),
              child: InkWell(
                onTap: (){

                  setState(() {

                  });
                },
                  child: Image.asset("assets/images/Group 7.png"))),

          SizedBox(
            height: 25,
          ),
          Container(
              margin: EdgeInsets.only(
                left: 70,
              ),
              child: Text("عدد التسبيحات",style: Theme.of(context).textTheme.bodySmall,)),
          Container(
            margin: EdgeInsets.only(
                left: 40,
                top: 10.0
            ),
            padding: EdgeInsets.only(
              top: 30,
              left: 25,
            ),
            width: 69,
            height: 81,
            decoration: BoxDecoration(
              color: Color(0xFFB7935F,),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text("30",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
              ),),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 30.0,
            ),
            padding: EdgeInsets.only(
              top: 10,
              left: 30,
            ),
            width:137,
            height: 51,
            decoration: BoxDecoration(
              color: MyThemeData.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text("سبحان الله",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
              ),),
          ),
    ]
       );


  }


}
