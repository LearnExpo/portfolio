import 'package:flutter_test/flutter_test.dart';

import 'package:portfolio/main.dart';

void main() {
  testWidgets('renders the portfolio landing experience', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text("Hi, I'm Vikash Kumar"), findsOneWidget);
    expect(find.text('View My Work'), findsOneWidget);
    expect(find.text('Projects'), findsWidgets);
  });
}
