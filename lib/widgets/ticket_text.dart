import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TicketText({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
                width: size.width*.44,
                padding: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                    color:  Colors.white
                ),
                child: Center(
                  child: Text(firstText),
                )
            ),
            Container(
                width: size.width*.44,
                padding: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                    color:  Colors.transparent
                ),
                child: Center(
                  child: Text(secondText),
                )
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xfff4f6fd)
        ),
      ),
    );
  }
}
