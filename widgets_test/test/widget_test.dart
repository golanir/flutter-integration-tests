import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widgets_test/main.dart';

void main() {
  testWidgets('long press test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    await tester.pumpAndSettle();

    final firstButton = find.byKey(const Key("first"));

    expect(firstButton, findsOneWidget);

    await tester.longPress(firstButton);

    await tester.pumpAndSettle();

    final secondButton = find.byKey(const Key("second"));

    expect(secondButton, findsOneWidget);
  });
}
