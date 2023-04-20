import 'dart:ui';

import 'package:book_flights/ui/common/app_colors.dart';
import 'package:book_flights/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_viewmodel.dart';

class PaymentView extends StackedView<PaymentViewModel> {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      appBar: AppBar(
        foregroundColor: kcDarkGreyColor,
        backgroundColor: kcVeryLightGrey,
        elevation: 0,
        title: Center(
          child: Text("Payment"),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: screenHeightFraction(context, dividedBy: 4),
            decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  height: screenHeightFraction(context, dividedBy: 4),
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: screenHeight(context) * 0.08,
                              width: screenWidth(context) * 0.2,
                              child:
                                  Image.asset("assets/Ryanair-Logo-3692097124"),
                            ),
                            Spacer(),
                            Icon(Icons.calendar_month_outlined),
                            horizontalSpaceMedium,
                            Text("28/04/2023"),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "4.50",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("DEL"),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: kcPrimaryColor,
                              child: Icon(
                                Icons.flight,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "5.30",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text("CCU"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Total",
                                  // style: TextStyle(
                                  //     fontWeight: FontWeight.bold, fontSize: 20),
                                )
                              ],
                            ),
                            Text(
                              "\$340",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: kcPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: kcPrimaryColor)),
                  labelText: "Card Number",
                  prefixIcon: Icon(Icons.credit_card_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: kcPrimaryColor)),
                  labelText: "Card Holder Name",
                  prefixIcon: Icon(Icons.art_track_outlined)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: kcPrimaryColor)),
                      labelText: "CCV",
                      prefixIcon: Icon(Icons.credit_score)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: kcPrimaryColor)),
                      labelText: "Expiry Date",
                      prefixIcon: Icon(Icons.credit_card_off_outlined)),
                ),
              )
            ],
          ),
          verticalSpaceSmall,
          SizedBox(
            height: screenHeightFraction(context, dividedBy: 20),
            child: Row(
              children: [
                horizontalSpaceMedium,
                Image.asset("assets/Mastercard-Logo-2016-2020-2209720463"),
                horizontalSpaceSmall,
                Image.asset("assets/Visa-Symbol-2009956357"),
                Spacer()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: screenWidth(context) * 0.85,
              // height: MediaQuery.of(context).size.height * 0.55,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: kcPrimaryColor),
                onPressed: () {
                  viewModel.boardingPass();
                },
                child: Text("Confirm"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: screenWidth(context) * 0.85,
              // height: MediaQuery.of(context).size.height * 0.55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kcVeryLightGrey,
                    foregroundColor: kcPrimaryColor),
                onPressed: () {},
                child: Text("Skip"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  PaymentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentViewModel();
}
