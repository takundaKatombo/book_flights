import 'package:book_flights/app/app.bottomsheets.dart';
import 'package:book_flights/app/app.dialogs.dart';
import 'package:book_flights/app/app.locator.dart';
import 'package:book_flights/app/app.router.dart';
import 'package:book_flights/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;
  List<bool> tripSelection = [true, false, false];

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  bottomNavBarPressed(index) {
    switch (index) {
      case 0:
        _navigationService.replaceWithHomeView();
        break;
      case 1:
        _navigationService.navigateToBookingsView();
        break;
      default:
    }
  }

  void searchResults() {
    _navigationService.navigateToSearchResultView();
  }
}
