import 'package:book_flights/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'search_result_viewmodel.dart';

class SearchResultView extends StackedView<SearchResultViewModel> {
  const SearchResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchResultViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcVeryLightGrey,
      appBar: AppBar(
        foregroundColor: kcDarkGreyColor,
        backgroundColor: kcVeryLightGrey,
        elevation: 0,
        title: Center(child: Text("Search Result")),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: screenHeight(context) * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: screenHeight(context) * 0.1,
                            width: screenWidth(context) * 0.2,
                            child:
                                Image.asset("assets/Ryanair-Logo-3692097124"),
                          ),
                          horizontalSpaceSmall,
                          Text("IN 230"),
                          Spacer(),
                          Text("01 hr 40min"),
                        ],
                      ),
                    ),
                    // Divider(
                    //   thickness: 2,
                    //   indent: 30,
                    //   endIndent: 30,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
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

                    Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.chair_outlined),
                              horizontalSpaceSmall,
                              Text(
                                "Economy Class",
                                // style: TextStyle(
                                //     fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("From"),
                              Text(
                                "\$120",
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: kcPrimaryColor),
                          onPressed: () {
                            viewModel.checkFlight();
                          },
                          child: Text("Check"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: screenHeight(context) * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: screenHeight(context) * 0.1,
                            width: screenWidth(context) * 0.2,
                            child:
                                Image.asset("assets/Ryanair-Logo-3692097124"),
                          ),
                          horizontalSpaceSmall,
                          Text("IN 230"),
                          Spacer(),
                          Text("01 hr 40min"),
                        ],
                      ),
                    ),
                    // Divider(
                    //   thickness: 2,
                    //   indent: 30,
                    //   endIndent: 30,
                    // ),
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
                                "5.30",
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

                    Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.chair_outlined),
                              horizontalSpaceSmall,
                              Text(
                                "Business Class",
                                // style: TextStyle(
                                //     fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("From"),
                              Text(
                                "\$340",
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: kcPrimaryColor),
                          onPressed: () {
                            viewModel.checkFlight();
                          },
                          child: Text("Check"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: screenHeight(context) * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: screenHeight(context) * 0.1,
                            width: screenWidth(context) * 0.2,
                            child:
                                Image.asset("assets/Ryanair-Logo-3692097124"),
                          ),
                          horizontalSpaceSmall,
                          Text("IN 230"),
                          Spacer(),
                          Text("01 hr 40min"),
                        ],
                      ),
                    ),
                    // Divider(
                    //   thickness: 2,
                    //   indent: 30,
                    //   endIndent: 30,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
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

                    Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.chair_outlined),
                              horizontalSpaceSmall,
                              Text(
                                "Economy Class",
                                // style: TextStyle(
                                //     fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("From"),
                              Text(
                                "\$120",
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: kcPrimaryColor),
                          onPressed: () {
                            viewModel.checkFlight();
                          },
                          child: Text("Check"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: screenHeight(context) * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: screenHeight(context) * 0.1,
                            width: screenWidth(context) * 0.2,
                            child:
                                Image.asset("assets/Ryanair-Logo-3692097124"),
                          ),
                          horizontalSpaceSmall,
                          Text("IN 230"),
                          Spacer(),
                          Text("01 hr 40min"),
                        ],
                      ),
                    ),
                    // Divider(
                    //   thickness: 2,
                    //   indent: 30,
                    //   endIndent: 30,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
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

                    Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.chair_outlined),
                              horizontalSpaceSmall,
                              Text(
                                "Economy Class",
                                // style: TextStyle(
                                //     fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("From"),
                              Text(
                                "\$120",
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: kcPrimaryColor),
                          onPressed: () {
                            viewModel.checkFlight();
                          },
                          child: Text("Check"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  SearchResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchResultViewModel();
}
