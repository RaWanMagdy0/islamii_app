import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii_app/my_theme_data.dart';
import 'package:islamii_app/tabs/setting/selected_option.dart';
import 'package:islamii_app/tabs/setting/unselected_option.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme= Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: MyThemeData.primary,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       SelectedOption(selectedTitle: "English",),
          SizedBox(
            height: 30,
          ),
          unSelectedOption(unSelectedtitle: "عربي",)
        ],
      ),

    );
  }
}
