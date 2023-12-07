import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rondom_number/main.dart';

void main() {
  testWidgets('App should start with initial text',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the initial text is displayed.
    expect(find.text('Press the button and start speaking'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });

  testWidgets('Mic button should toggle listening state',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the mic button changes the listening state.
    expect(find.byIcon(Icons.mic_none), findsNothing);
    expect(find.byIcon(Icons.mic), findsOneWidget);

    // Tap the mic button and trigger a frame.
    await tester.tap(find.byIcon(Icons.mic));
    await tester.pump();

    // Verify that the mic icon changes after tapping.
    expect(find.byIcon(Icons.mic_none), findsOneWidget);
    expect(find.byIcon(Icons.mic), findsNothing);
  });
}
