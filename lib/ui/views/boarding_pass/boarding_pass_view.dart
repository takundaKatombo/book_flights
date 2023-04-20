import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_flights/ui/common/app_colors.dart';
import 'package:book_flights/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'boarding_pass_viewmodel.dart';

class BoardingPassView extends StackedView<BoardingPassViewModel> {
  const BoardingPassView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BoardingPassViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      appBar: AppBar(
        backgroundColor: kcVeryLightGrey,
        foregroundColor: kcDarkGreyColor,
        elevation: 0,
        title: Center(
          child: Text("Boarding Pass"),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            verticalSpaceSmall,
            ListTile(
              leading: CircleAvatar(
                backgroundColor: kcPrimaryColor,
                child: Text("JD"),
              ),
              title: Text("Mr. John Doe"),
              subtitle: Text("Passenger"),
              trailing: Image.asset("assets/Ryanair-Logo-3692097124"),
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
            verticalSpaceTiny,
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpaceLarge,
            Center(
              child: BarcodeWidget(
                drawText: false,
                barcode: Barcode.code128(), // Barcode type and settings
                data: 'Backend Api to be connected ASAP', // Content
                width: 800,
                height: screenHeightFraction(context, dividedBy: 20),
              ),
            ),
            verticalSpaceSmall,
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: screenWidth(context) * 0.85,
                // height: MediaQuery.of(context).size.height * 0.55,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: kcPrimaryColor),
                  onPressed: () {},
                  child: Text("Download"),
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
                  child: Text("Book another flight"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  BoardingPassViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BoardingPassViewModel();
}
