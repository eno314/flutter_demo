import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> arrangeWidgetWithProvider(
  WidgetTester tester,
  Widget widget,
) async {
  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(home: widget),
    ),
  );
}

Future<void> tap(WidgetTester tester, Finder finder) async {
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

Future<void> inputText(WidgetTester tester, Finder finder, String text) async {
  await tester.enterText(finder, text);
  await tester.pumpAndSettle();
}

Future<void> selectDropdown<T>(
  WidgetTester tester,
  Finder dropdownFinder,
  String selectedValue,
) async {
  // Open dropdown
  await tester.tap(dropdownFinder);
  await tester.pumpAndSettle();

  // Select DropdownButton value
  // note: `last` is required because there are two DropdownButton values.
  // see : https://stackoverflow.com/questions/69012695/flutter-how-to-select-dropdownbutton-item-in-widget-test/69017359#69017359
  await tester.tap(find.text(selectedValue).last);
  await tester.pumpAndSettle();
}

void assertTextFieldText(WidgetTester tester, Finder finder, Matcher matcher) {
  final textField = tester.widget<TextField>(finder);
  expect(textField.controller?.text, matcher);
}

void assertButtonEnabled(WidgetTester tester, Finder finder, Matcher matcher) {
  final button = tester.widget<ElevatedButton>(finder);
  expect(button.enabled, matcher);
}

void assertDropdownButtonValue<T>(
  WidgetTester tester,
  Finder finder,
  Matcher matcher,
) {
  final dropdownButton = tester.widget<DropdownButton<T>>(finder);
  expect(dropdownButton.value, matcher);
}
