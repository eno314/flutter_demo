import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_page.dart';
import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final textFieldFinder = find.byKey(const Key('textFieldDemo'));
  final dropdownFinder = find.byKey(const Key('dropdownButtonDemo'));
  final postButtonFinder = find.byKey(const Key('postButtonDemo'));

  testWidgets('''
    When Page is initialized,
    Then there are 4 widgets:
      - Text (having title)
      - TextField (empty)
      - DropdownButton (no selection)
      - PostButton (disabled)
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    expect(find.text(FormPage.title), findsOneWidget);

    expect(textFieldFinder, findsOneWidget);
    _assertTextFieldIsEmpty(tester, textFieldFinder);

    expect(dropdownFinder, findsOneWidget);
    _assertDropdownButtonValueIsNull(tester, dropdownFinder);

    expect(postButtonFinder, findsOneWidget);
    _assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When only TextField has value,
    Then PostButton is disabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _inputText(tester, textFieldFinder, 'test');

    _assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When only DropdownButton has value,
    Then PostButton is disabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _selectDropdown(tester, dropdownFinder, FormDropdownValue.work.name);

    _assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When TextField and DropdownButton have value,
    Then PostButton is enabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _inputText(tester, textFieldFinder, 'test');
    await _selectDropdown(tester, dropdownFinder, FormDropdownValue.work.name);

    _assertButtonEnabled(tester, postButtonFinder, isTrue);
  });

  testWidgets('''
    When DropdownButton have value and TextField value is removed,
    Then PostButton is disabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _inputText(tester, textFieldFinder, 'test');
    await _selectDropdown(tester, dropdownFinder, FormDropdownValue.work.name);
    await _inputText(tester, textFieldFinder, '');

    _assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When PostButton is tapped,
    Then TextField and Dropdown is cleared.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _inputText(tester, textFieldFinder, 'test');
    await _selectDropdown(tester, dropdownFinder, FormDropdownValue.work.name);

    await tester.tap(postButtonFinder);
    await tester.pumpAndSettle();

    _assertTextFieldIsEmpty(tester, textFieldFinder);
    _assertDropdownButtonValueIsNull(tester, dropdownFinder);
    _assertButtonEnabled(tester, postButtonFinder, isFalse);
  });
}

Widget _buildTestWidget() {
  return const ProviderScope(child: MaterialApp(home: FormPage()));
}

Future<void> _inputText(WidgetTester tester, Finder finder, String text) async {
  await tester.enterText(finder, text);
  await tester.pumpAndSettle();
}

Future<void> _selectDropdown(
  WidgetTester tester,
  Finder finder,
  String selectedValue,
) async {
  // Open DropdownButton
  await tester.tap(finder);
  await tester.pumpAndSettle();

  // Select DropdownButton value
  // note: `last` is required because there are two DropdownButton values.
  // see : https://stackoverflow.com/questions/69012695/flutter-how-to-select-dropdownbutton-item-in-widget-test/69017359#69017359
  await tester.tap(find.text(selectedValue).last);
  await tester.pumpAndSettle();
}

void _assertTextFieldIsEmpty(WidgetTester tester, Finder finder) {
  final textField = tester.widget<TextField>(finder);
  expect(textField.controller?.text, isEmpty);
}

void _assertDropdownButtonValueIsNull(WidgetTester tester, Finder finder) {
  final dropdownButton = tester.widget<DropdownButton<FormDropdownValue>>(
    finder,
  );
  expect(dropdownButton.value, isNull);
}

void _assertButtonEnabled(WidgetTester tester, Finder finder, Matcher matcher) {
  final button = tester.widget<ElevatedButton>(finder);
  expect(button.enabled, matcher);
}
