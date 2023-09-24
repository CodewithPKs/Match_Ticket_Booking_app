import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widegert.dart';
import '../widgets/ticket_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text("Whar are\n you looking for ?", style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          const Gap(20),
          const TicketText(firstText: 'Matche tickets', secondText: 'Final tickets',),
          const Gap(25),
          const AppIconText(icon: Icons.sports_cricket_outlined, text: "Team",),
          const Gap(25),
          const AppIconText(icon: Icons.location_on, text: "Venue",),
          const Gap(25),
          Container(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xd91130ce),
        ),
        child: Center(
          child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white,),),
        )
      ),
          const Gap(40),
          const AppDoubleTextWidget(bigText: 'Greatest rivalries', smallText: 'view all',),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/rivalries.jpeg"
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                   const Gap(12),
                   Text("The rivalry between India and Pakistan is recognised as one of the most intense sporting rivalries in the world.",
                    style: Styles.headLineStyle3,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xff3ab8b8),
                            borderRadius: BorderRadius.circular(18)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Who will win\n this rivalries",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                            Gap(10),
                            Text("India have a 100 percent win record against Pakistan in the ODI Cricket World Cup.",
                              style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16),)
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xff189999)),
                            color: Colors.transparent
                        ),
                      )),
                    ],
                  ),
                  Gap(15),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    width: size.width*0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xffec6545)
                    ),
                    child: Column(
                      children: [
                        Text("Teke love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,),
                        Gap(5),
                        RichText(
                          text: const TextSpan(
                           children: [
                             TextSpan(
                                 text: '😎',
                                 style: TextStyle(fontSize: 35)
                             ),
                             TextSpan(
                                 text: '🔥',
                                 style: TextStyle(fontSize: 45)
                             ),
                             TextSpan(
                                 text: '😍',
                                 style: TextStyle(fontSize: 35)
                             ),
                           ]
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
