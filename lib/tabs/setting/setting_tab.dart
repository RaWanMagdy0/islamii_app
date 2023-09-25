import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii_app/tabs/setting/setting_item.dart';

import '../../my_theme_data.dart';
import 'language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         setting_item(settingOptionTitle: "language",
             selectedOption: "English",
             onTap: (){
           showLanguageBottomSheent(context);
         }),
          SizedBox(
            height: 40,
          ),
          setting_item(settingOptionTitle: "Theme Mode",
              selectedOption: "Dark",
              onTap: (){
      showThemeBottomSheent(context);
          }),

        ],
      ),
    );
  }
}
void showLanguageBottomSheent(context){
  showModalBottomSheet(context: context, builder:(context)=> LanguageBottomSheet(),
  );
}
void showThemeBottomSheent(context){
  showModalBottomSheet(context: context, builder:(context)=> Container(
  ),);
}