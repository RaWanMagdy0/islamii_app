import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedOption extends StatelessWidget {
  final String selectedTitle;
  const SelectedOption({super.key,required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
          )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("English",style: Theme.of(context).textTheme.bodySmall,),
            Icon(Icons.check)
          ],
        ),
      ),
    );
  }
}
