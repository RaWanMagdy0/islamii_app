import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii_app/tabs/hadeth/hadeth_tab.dart';
import 'package:islamii_app/tabs/quran/quran_tab.dart';
import 'package:islamii_app/tabs/radio.dart';
import 'package:islamii_app/tabs/sebha.dart';
import 'package:islamii_app/tabs/setting/setting_tab.dart';

import 'my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              index = value;
              setState(() {});
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "quran",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "sebha",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "radio",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                  label: "ahadeth",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "settings",
                  backgroundColor: MyThemeData.primary),
            ],
          ),
          body:tabs[index] ,
        ),
      ],
    );
  }
  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),AhadethTab(),SettingsTab(),];
}

