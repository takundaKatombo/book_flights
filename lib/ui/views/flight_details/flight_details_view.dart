import 'package:book_flights/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'flight_details_viewmodel.dart';

class FlightDetailsView extends StackedView<FlightDetailsViewModel> {
  const FlightDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FlightDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      appBar: AppBar(
        foregroundColor: kcDarkGreyColor,
        backgroundColor: kcVeryLightGrey,
        elevation: 0,
        title: Center(child: Text("Flight Details")),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            height: screenHeight(context) * 0.715,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    verticalSpaceSmall,
                    SizedBox(
                      height: screenHeight(context) * 0.1,
                      width: screenWidth(context) * 0.6,
                      child: Image.asset("assets/Ryanair-Logo-3692097124"),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "5.50",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
                                "7.30",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Text("CCU"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceMedium,
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("RG Mugabe \n International \n Airport"),
                          Text("OR Tambo \n International \n Airport")
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
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
                                    borderSide:
                                        BorderSide(color: kcPrimaryColor)),
                                labelText: "Date",
                                prefixIcon:
                                    Icon(Icons.calendar_month_outlined)),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide:
                                        BorderSide(color: kcPrimaryColor)),
                                labelText: "Time",
                                prefixIcon: Icon(Icons.access_time)),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(fontSize: 30),
                        ),
                        horizontalSpaceSmall,
                        Text(
                          "\$ 180",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          verticalSpaceMedium,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenWidthFraction(context, dividedBy: 3),
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: kcPrimaryColor)),
                  // height: MediaQuery.of(context).size.height * 0.55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: kcPrimaryColor,
                        backgroundColor: kcVeryLightGrey),
                    onPressed: () {},
                    child: Text("Cancel"),
                  ),
                ),
                Container(
                  width: screenWidthFraction(context, dividedBy: 3),
                  // height: MediaQuery.of(context).size.height * 0.55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kcPrimaryColor),
                    onPressed: () {
                      viewModel.confirm();
                    },
                    child: Text("Confirm"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  FlightDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FlightDetailsViewModel();
}
