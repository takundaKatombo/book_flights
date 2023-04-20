import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:book_flights/ui/common/app_colors.dart';
import 'package:book_flights/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kcVeryLightGrey,
        foregroundColor: kcDarkGreyColor,
        title: Center(
          child: const Text(
            "Book Flight",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      endDrawer: Drawer(
        width: screenWidth(context) * 0.6666,
        child: Column(
          children: [
            verticalSpaceLarge,
            ListTile(
              leading: CircleAvatar(),
              title: Text("Hello"),
              subtitle: Text('John Doe'),
            ),
            Divider(
              indent: 25,
              endIndent: 40,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.calendar_month_outlined),
              title: Text("My Bookings"),
            ),
            ListTile(
              leading: Icon(Icons.airplane_ticket_outlined),
              title: Text("Boarding Pass"),
            ),
            ListTile(
              leading: Icon(Icons.support_agent_outlined),
              title: Text("Support"),
            ),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text("Rate Us"),
            ),
            Divider(
              indent: 25,
              endIndent: 40,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.flight),
              title: Text("Flight"),
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text("Hotel"),
            ),
            ListTile(
              leading: Icon(Icons.bus_alert_outlined),
              title: Text("Bus"),
            ),
            ListTile(
              leading: Icon(Icons.tour),
              title: Text("Tour"),
            ),
            ListTile(
              leading: Icon(Icons.local_atm_rounded),
              title: Text("Travel loan"),
            ),
            Text("App version 1.0.1")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            viewModel.bottomNavBarPressed(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: kcPrimaryColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.event_note /*TODO:change icon */),
                label: "Booking"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_pizza_outlined,
                ),
                label: "Offer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), label: "Inbox"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: "Profile")
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: ToggleButtons(
                      onPressed: (index) {},
                      selectedColor: Colors.white,
                      constraints: BoxConstraints.expand(
                          width: MediaQuery.of(context).size.width * 0.25),
                      fillColor: kcPrimaryColor,
                      renderBorder: false,
                      borderRadius: BorderRadius.circular(50),
                      children: [
                        Text("One Way"),
                        Text("Round"),
                        Text("Multicity")
                      ],
                      isSelected: viewModel.tripSelection,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Card(
                    shadowColor: Colors.grey[900],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide:
                                        BorderSide(color: kcPrimaryColor)),
                                labelText: "From",
                                prefixIcon:
                                    Icon(Icons.airplane_ticket_outlined)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide:
                                        BorderSide(color: kcPrimaryColor)),
                                labelText: "To",
                                prefixIcon:
                                    Icon(Icons.airplane_ticket_outlined)),
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
                                        borderSide:
                                            BorderSide(color: kcPrimaryColor)),
                                    labelText: "Departure",
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
                                    labelText: "Return",
                                    prefixIcon: Icon(Icons.add)),
                              ),
                            )
                          ],
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
                                    labelText: "Traveller",
                                    prefixIcon: Icon(Icons.person_4)),
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
                                    labelText: "Class",
                                    prefixIcon: Icon(Icons.add)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: screenWidth(context) * 0.85,
                            // height: MediaQuery.of(context).size.height * 0.55,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kcPrimaryColor),
                              onPressed: () {
                                viewModel.searchResults();
                              },
                              child: Text("Search"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hot Offer',
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'See all',
                      style: TextStyle(
                          color: kcPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.175,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.175,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          "assets/Mastercard-Logo-2016-2020-2209720463")),
                                  Text("15% OFF"),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("15% Discount \n with MasterCard"),
                                    Text(
                                        "Lorem Ipsum dolor \n sit am etet adip")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.175,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                        "assets/Visa-Symbol-2009956357"),
                                  ),
                                  Text("30% OFF"),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("30% Discount \n with VisaCard"),
                                    Text(
                                        "Lorem Ipsum dolor \n sit am etet adip")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
