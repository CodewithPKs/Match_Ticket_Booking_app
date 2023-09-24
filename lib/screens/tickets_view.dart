import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../widgets/colume_layout.dart';
import '../widgets/layout_buileder.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 169,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: isColor==null? Color(0xff526799):Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  )),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style: isColor==null?Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(isColor: true,),
                      Expanded(
                       child: Stack(
                         children: [
                            const SizedBox(
                             height: 24,
                             child:  AppLayoutBuilder(section: 6,isColor: true,)
                           ),
                           Center(
                             child: Transform.rotate(angle: 3.3,
                               child: Icon(Icons.sports_cricket, color: isColor==null?Colors.white:Color(0xff8accf7),),
                             ),
                           )
                         ],
                       ),
                      ),
                      ThickContainer(isColor: true,),

                      Expanded(child: Container()),

                      Text(
                        "${ticket['to']['code']}",
                        style: isColor==null?Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('${ticket['from']['name']}',

                          style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white,):Styles.headLineStyle4,
                        ),
                      ),
                      Text("${ticket['place']}", style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      SizedBox(
                        width: 100,
                        child: Text('${ticket['to']['name']}',
                          textAlign: TextAlign.end,
                          style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
             */
            Container(
              color: isColor==null?Styles.orangeColor:Colors.white,
              child:  Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: isColor==null?Colors.white:Colors.grey.shade300
                                ),
                              ),
                            )),
                          );
                        },

                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null?Colors.grey.shade200:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            bottom part of the orange card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: isColor==null?Styles.orangeColor:Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor==null?21:0),
                    bottomRight: Radius.circular(isColor==null?21:0),
                  )),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppCoulumLayout(
                        firstText: ticket['date'],
                        secondtxt: 'date',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppCoulumLayout(
                        firstText: "${ticket['time']}",
                        secondtxt: 'time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppCoulumLayout(
                          firstText: "${ticket['number']}",
                          secondtxt: "number",
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
