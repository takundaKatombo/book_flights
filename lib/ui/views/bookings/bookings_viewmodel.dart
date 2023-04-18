import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:book_flights/app/app.router.dart';
import '../../../app/app.locator.dart';

class BookingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void appBarBack() {
    _navigationService.navigateToHomeView();
  }
}
