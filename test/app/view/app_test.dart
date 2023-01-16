import 'package:ejara_demo/app/app.dart';
import 'package:ejara_demo/payment_method/payment_method.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders PaymentMethodScreen', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(PaymentMethodScreen), findsOneWidget);
    });
  });
}
