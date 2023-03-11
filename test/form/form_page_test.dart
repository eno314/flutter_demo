import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_page.dart';
import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/utils.dart' as utils;

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
    await utils.arrangeWidgetWithProvider(tester, const FormPage());

    expect(find.text(FormPage.title), findsOneWidget);

    expect(textFieldFinder, findsOneWidget);
    utils.assertTextFieldText(tester, textFieldFinder, isEmpty);

    expect(dropdownFinder, findsOneWidget);
    utils.assertDropdownButtonValue(tester, dropdownFinder, isNull);

    expect(postButtonFinder, findsOneWidget);
    utils.assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When only TextField has value,
    Then PostButton is disabled.
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const FormPage());

    await utils.inputText(tester, textFieldFinder, 'test');

    utils.assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When only DropdownButton has value,
    Then PostButton is disabled.
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const FormPage());

    await utils.selectDropdown(
        tester, dropdownFinder, FormDropdownValue.work.name);

    utils.assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When TextField and DropdownButton have value,
    Then PostButton is enabled.
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const FormPage());

    await utils.inputText(tester, textFieldFinder, 'test');
    await utils.selectDropdown(
        tester, dropdownFinder, FormDropdownValue.work.name);

    utils.assertButtonEnabled(tester, postButtonFinder, isTrue);
  });

  testWidgets('''
    When DropdownButton have value and TextField value is removed,
    Then PostButton is disabled.
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const FormPage());

    await utils.inputText(tester, textFieldFinder, 'test');
    await utils.selectDropdown(
        tester, dropdownFinder, FormDropdownValue.work.name);
    await utils.inputText(tester, textFieldFinder, '');

    utils.assertButtonEnabled(tester, postButtonFinder, isFalse);
  });

  testWidgets('''
    When PostButton is tapped,
    Then TextField and Dropdown is cleared.
  ''', (tester) async {
    await utils.arrangeWidgetWithProvider(tester, const FormPage());

    await utils.inputText(tester, textFieldFinder, 'test');
    await utils.selectDropdown(
        tester, dropdownFinder, FormDropdownValue.work.name);

    await tester.tap(postButtonFinder);
    await tester.pumpAndSettle();

    utils.assertTextFieldText(tester, textFieldFinder, isEmpty);
    utils.assertDropdownButtonValue(tester, dropdownFinder, isNull);
    utils.assertButtonEnabled(tester, postButtonFinder, isFalse);
  });
}
