import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii_app/tabs/setting/setting_tab.dart';

import '../../my_theme_data.dart';

typedef settingOptionClicked= void Function();
class setting_item extends StatelessWidget {
 final String settingOptionTitle,selectedOption;
final Function onTap;
setting_item({required this.settingOptionTitle,required this.onTap,required this.selectedOption});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
  return Column(
      children: [
        Text(settingOptionTitle,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        GestureDetector(
          onTap: (){
            showLanguageBottomSheent(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 12,
            ),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border:Border.all(
                  color: MyThemeData.primary,
                  width: 1.2,
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(selectedOption,textAlign:TextAlign.start ,
                style: Theme.of(context).textTheme.bodySmall,),
                Icon(Icons.arrow_drop_down_sharp)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
