import 'package:book_flights/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:book_flights/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:book_flights/ui/views/home/home_view.dart';
import 'package:book_flights/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:book_flights/ui/views/bookings/bookings_view.dart';
import 'package:book_flights/ui/views/profile/profile_view.dart';
import 'package:book_flights/ui/views/search_result/search_result_view.dart';
import 'package:book_flights/ui/views/flight_details/flight_details_view.dart';
import 'package:book_flights/ui/views/choose_seats/choose_seats_view.dart';
import 'package:book_flights/ui/views/payment/payment_view.dart';
import 'package:book_flights/ui/views/boarding_pass/boarding_pass_view.dart';
import 'package:book_flights/ui/views/personal_info/personal_info_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: BookingsView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SearchResultView),
    MaterialRoute(page: FlightDetailsView),
    MaterialRoute(page: ChooseSeatsView),
    MaterialRoute(page: PaymentView),
    MaterialRoute(page: BoardingPassView),
    MaterialRoute(page: PersonalInfoView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
