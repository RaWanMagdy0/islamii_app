import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class unSelectedOption extends StatelessWidget {
  final String unSelectedtitle;
  const unSelectedOption({super.key,required this.unSelectedtitle});

  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text("عربي",style: Theme.of(context).textTheme.bodySmall,),
        );

  }
}
