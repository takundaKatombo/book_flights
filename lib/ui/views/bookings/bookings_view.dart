import 'package:book_flights/ui/common/app_colors.dart';
import 'package:book_flights/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bookings_viewmodel.dart';

class BookingsView extends StackedView<BookingsViewModel> {
  const BookingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BookingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      appBar: AppBar(
        backgroundColor: kcVeryLightGrey,
        foregroundColor: kcDarkGreyColor,
        elevation: 0,
        // leading: IconButton(
        //     onPressed: () {
        //       viewModel.appBarBack();
        //     },
        //     icon: Icon(Icons.arrow_back)),
        title: Center(child: Text("My Bookings")),
      ),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        height: screenHeight(context) * 0.715,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
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
                            labelText: "Date",
                            prefixIcon: Icon(Icons.calendar_month_outlined)),
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Flight"),
                          Text(
                            "ZW 104",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Gate"),
                          Text(
                            "22",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Seat"),
                          Text(
                            "2B",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Class"),
                          Text(
                            "Economy",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: screenWidth(context) * 0.85,
                    // height: MediaQuery.of(context).size.height * 0.55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kcPrimaryColor),
                      onPressed: () {},
                      child: Text("Modify"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  BookingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BookingsViewModel();
}
