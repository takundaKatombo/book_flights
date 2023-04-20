import 'package:book_flights/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'personal_info_viewmodel.dart';

class PersonalInfoView extends StackedView<PersonalInfoViewModel> {
  const PersonalInfoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PersonalInfoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      appBar: AppBar(
        backgroundColor: kcVeryLightGrey,
        foregroundColor: kcDarkGreyColor,
        elevation: 0,
        title: Center(
          child: Text("Personal Info"),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: kcPrimaryColor,
            ),
            Text(
              "Hello Traveller",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: kcPrimaryColor)),
                    labelText: "Name",
                    prefixIcon: Icon(Icons.text_fields_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: kcPrimaryColor)),
                    labelText: "Address",
                    prefixIcon: Icon(Icons.map_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: kcPrimaryColor)),
                    labelText: "Passport",
                    prefixIcon: Icon(Icons.key)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: kcPrimaryColor)),
                    labelText: "DOB",
                    prefixIcon: Icon(Icons.cake_outlined),
                    suffix: Icon(Icons.calendar_month_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: kcPrimaryColor)),
                    labelText: "Country",
                    prefixIcon: Icon(Icons.donut_large_sharp)),
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
                    viewModel.payment();
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
      ),
    );
  }

  @override
  PersonalInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalInfoViewModel();
}
