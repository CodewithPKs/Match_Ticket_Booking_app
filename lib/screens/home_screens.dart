
import 'package:booktickets/screens/rivalries_screen.dart';
import 'package:booktickets/screens/tickets_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
             padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning",
                        style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text("Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 70,
                       height: 70,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         image: const DecorationImage(
                           fit: BoxFit.cover,
                           image: AssetImage(
                             "assets/images/wc23.png"
                           )
                         )
                       ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xffbec205),),
                      Text("Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                AppDoubleTextWidget(bigText: 'Your tickets', smallText: 'view all',)
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((ticket) => TicketView(ticket: ticket,)).toList()
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: 'Upcoming Matches', smallText: 'view all',)
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((hotel) => RevalriesScreen(hotel: hotel)).toList()
      ),
          )
        ],
      ),
    );
  }
}
