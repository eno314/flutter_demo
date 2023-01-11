import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_page.dart';
import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('''
    Form page has a title, TextField, DropdownButton and PostButton.
  ''', (tester) async {
    await tester.pumpWidget(_buildTestWidget());

    expect(find.text(FormPage.title), findsOneWidget);
    expect(
      find.widgetWithText(TextField, FormPage.textFieldLabel),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(
        DropdownButton<FormDropdownValue>,
        FormPage.dropdownButtonHint,
      ),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(ElevatedButton, FormPage.postButtonText),
      findsOneWidget,
    );
  });
}

Widget _buildTestWidget() {
  return const ProviderScope(child: MaterialApp(home: FormPage()));
}
