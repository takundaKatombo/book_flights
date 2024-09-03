import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'choose_seats_viewmodel.dart';

class ChooseSeatsView extends StackedView<ChooseSeatsViewModel> {
  const ChooseSeatsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChooseSeatsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ChooseSeatsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChooseSeatsViewModel();
}
