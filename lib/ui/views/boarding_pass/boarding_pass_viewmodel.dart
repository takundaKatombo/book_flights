import 'package:book_flights/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class BoardingPassViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void home() {
    _navigationService.navigateToHomeView();
  }
}
