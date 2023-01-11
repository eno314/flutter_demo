import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_page.dart';
import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final textFieldFinder = find.widgetWithText(
    TextField,
    FormPage.textFieldLabel,
  );

  final dropdownFinder = find.widgetWithText(
    DropdownButton<FormDropdownValue>,
    FormPage.dropdownButtonHint,
  );

  final postButtonFinder = find.widgetWithText(
    ElevatedButton,
    FormPage.postButtonText,
  );

  testWidgets('''
    Form page has a title, TextField, DropdownButton and PostButton.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    expect(find.text(FormPage.title), findsOneWidget);
    expect(textFieldFinder, findsOneWidget);
    expect(dropdownFinder, findsOneWidget);
    expect(postButtonFinder, findsOneWidget);
  });

  testWidgets('''
    When Page is initialized,
    Then TextField is empty.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    final textField = tester.widget<TextField>(textFieldFinder);
    expect(textField.controller?.text, isEmpty);
  });

  testWidgets('''
    When Page is initialized,
    Then DropdownButton is null.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    final dropdownButton = tester.widget<DropdownButton<FormDropdownValue>>(
      dropdownFinder,
    );
    expect(dropdownButton.value, isNull);
  });

  testWidgets('''
    When Page is initialized,
    Then PostButton is disabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    final postButton = tester.widget<ElevatedButton>(postButtonFinder);
    expect(postButton.enabled, isFalse);
  });

  testWidgets('''
    When only TextField has value,
    Then PostButton is disabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _inputText(tester, textFieldFinder, 'test');

    final postButton = tester.widget<ElevatedButton>(postButtonFinder);
    expect(postButton.enabled, isFalse);
  });

  testWidgets('''
    When only DropdownButton has value,
    Then PostButton is disabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _selectDropdown(tester, dropdownFinder, FormDropdownValue.work.name);

    final postButton = tester.widget<ElevatedButton>(postButtonFinder);
    expect(postButton.enabled, isFalse);
  });

  testWidgets('''
    When TextField and DropdownButton have value,
    Then PostButton is enabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _inputText(tester, textFieldFinder, 'test');
    await _selectDropdown(tester, dropdownFinder, FormDropdownValue.work.name);

    final postButton = tester.widget<ElevatedButton>(postButtonFinder);
    expect(postButton.enabled, isTrue);
  });

  testWidgets('''
    When DropdownButton have value and TextField value is removed,
    Then PostButton is disabled.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    await _inputText(tester, textFieldFinder, 'test');
    await _selectDropdown(tester, dropdownFinder, FormDropdownValue.work.name);
    await _inputText(tester, textFieldFinder, '');

    final postButton = tester.widget<ElevatedButton>(postButtonFinder);
    expect(postButton.enabled, isFalse);
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
