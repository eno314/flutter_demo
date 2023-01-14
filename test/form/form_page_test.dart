import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_page.dart';
import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final textFieldFinder = find.byKey(const Key('textFieldDemo'));
  final dropdownFinder = find.byKey(const Key('dropdownButtonDemo'));
  final postButtonFinder = find.byKey(const Key('postButtonDemo'));

  group('Happy path', (() {
    testWidgets('''
      Given initial page,
      Then there are 4 widgets:
        - Text (having title)
        - TextField (empty)
        - DropdownButton (no selection)
        - PostButton (disabled, text is Add)
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      expect(find.text(FormPage.title), findsOneWidget);

      expect(textFieldFinder, findsOneWidget);
      _assertTextFieldText(tester, textFieldFinder, isEmpty);

      expect(dropdownFinder, findsOneWidget);
      _assertDropdownValue(tester, dropdownFinder, isNull);

      expect(postButtonFinder, findsOneWidget);
      _assertPostButtonEnabled(tester, postButtonFinder, isFalse);
      _assertPostButtonText(FormPage.addButtonText);
    });

    testWidgets('''
      Given initial page,
      When only TextField has value,
      Then PostButton is disabled.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await _inputText(tester, textFieldFinder, 'test');

      _assertPostButtonEnabled(tester, postButtonFinder, isFalse);
    });

    testWidgets('''
      Given initial page,
      When only DropdownButton has value,
      Then PostButton is disabled.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await _selectDropdown(
          tester, dropdownFinder, FormDropdownValue.work.name);

      _assertPostButtonEnabled(tester, postButtonFinder, isFalse);
    });

    testWidgets('''
      Given initial page,
      When TextField and DropdownButton have value,
      Then PostButton is enabled.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await _inputText(tester, textFieldFinder, 'test');
      await _selectDropdown(
          tester, dropdownFinder, FormDropdownValue.work.name);

      _assertPostButtonEnabled(tester, postButtonFinder, isTrue);
    });

    testWidgets('''
      Given DropdownButton and TextField have value,
      When TextField value is removed,
      Then PostButton is disabled.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await _inputText(tester, textFieldFinder, 'test');
      await _selectDropdown(
          tester, dropdownFinder, FormDropdownValue.work.name);
      await _inputText(tester, textFieldFinder, '');

      _assertPostButtonEnabled(tester, postButtonFinder, isFalse);
    });

    testWidgets('''
      Given DropdownButton and TextField have value,
      When PostButton is tapped,
      Then PostButton's text is Update.
    ''', (tester) async {
      await tester.pumpWidget(_buildTestWidget());

      await _inputText(tester, textFieldFinder, 'test');
      await _selectDropdown(
          tester, dropdownFinder, FormDropdownValue.work.name);

      await tester.tap(postButtonFinder);
      await tester.pumpAndSettle();

      _assertPostButtonText(FormPage.updateButtonText);
    });
  }));
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

void _assertTextFieldText(WidgetTester tester, Finder finder, Matcher matcher) {
  final textField = tester.widget<TextField>(finder);
  expect(textField.controller?.text, matcher);
}

void _assertDropdownValue(WidgetTester tester, Finder finder, Matcher matcher) {
  final dropdown = tester.widget<DropdownButton<FormDropdownValue>>(
    finder,
  );
  expect(dropdown.value, matcher);
}

void _assertPostButtonEnabled(
    WidgetTester tester, Finder finder, Matcher matcher) {
  final button = tester.widget<ElevatedButton>(finder);
  expect(button.enabled, matcher);
}

void _assertPostButtonText(String expectedText) {
  final finder = find.widgetWithText(ElevatedButton, expectedText);
  expect(finder, findsOneWidget);
}
