import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/tickets_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_buileder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/colume_layout.dart';
import '../widgets/ticket_text.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(40),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              const Gap(20),
              const TicketText(
                firstText: 'Upcoming',
                secondText: 'Previous',
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppCoulumLayout(
                          firstText: 'Praveen soni',
                          secondtxt: 'name',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppCoulumLayout(
                          firstText: '+91 626-141-4316',
                          secondtxt: 'contect no.',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilder(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppCoulumLayout(
                          firstText: '0055 444 77141',
                          secondtxt: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppCoulumLayout(
                          firstText: 'IND5462',
                          secondtxt: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilder(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa_logo.png',
                                  scale: 11,
                                ),
                                Text(
                                  "**** 2462",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Gap(5),
                            Text(
                              "Paymant method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const Column(
                          children: [
                            AppCoulumLayout(
                              firstText: '₹ 2499.80',
                              secondtxt: 'Price',
                              alignment: CrossAxisAlignment.end,
                              isColor: false,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21))),
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https://my-portfolio-vkdi.onrender.com',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              const Gap(25),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
              left: 22,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )),
          Positioned(
              right: 22,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )),
        ],
      ),
    );
  }
}
