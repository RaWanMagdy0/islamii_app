import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../my_theme_data.dart';
import 'hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            ("اسلامي"),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 15,
          ),
          margin: EdgeInsets.only(top: 20, bottom: 120, left: 30, right: 30),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(
                30,
              )),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.title,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              Divider(
                color: MyThemeData.primary,
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "(${index + 1})${args.content[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                itemCount: args.content.length,
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}