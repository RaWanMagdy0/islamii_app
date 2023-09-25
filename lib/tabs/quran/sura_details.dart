import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii_app/tabs/quran/quran_tab.dart';

import '../../my_theme_data.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String content = "";
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (content.isEmpty) {
      readFiles(args.suranumber);
    }
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
                    "  سوره ${args.suraname}",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
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
                  itemBuilder: (context, index){ return Text(
                    "(${index + 1})${verses[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  );
                },
                itemCount: verses.length,
              ))
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;
    setState(() {
      verses = content.trim().split("\n");
    });
    print(text);
  }
}
