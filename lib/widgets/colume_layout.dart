import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppCoulumLayout extends StatelessWidget {
  final String firstText;
  final String secondtxt;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppCoulumLayout({Key? key,
    required this.firstText,
    required this.secondtxt,
    required this.alignment,
    this.isColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      //style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
      children: [
        Text(firstText, style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        Gap(5),
        Text(secondtxt, style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
      ],
    );
  }
}
