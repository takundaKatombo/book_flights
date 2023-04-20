import 'package:flutter_test/flutter_test.dart';
import 'package:book_flights/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('BoardingPassViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
