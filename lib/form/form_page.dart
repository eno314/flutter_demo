import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_demo/form/form_template.dart';

class FormPage extends StatelessWidget {
  static const title = 'Form with Riverpod';
  static const route = '/form';

  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FormTemplate(
      props: FormProps(
        title: title,
        postButtonText: 'post',
        textField: FormTextFieldProps(
          label: 'please input any text.',
        ),
        dropdownButton: FormDropdownButtonProps(
          hint: 'please select any color.',
        ),
      ),
      onChangedTextField: _onChangedTextField,
      onChangedDropdownValue: _onChangedDropdownValue,
      onPressedPostButton: _onPressedPostButton,
    );
  }

  void _onChangedTextField(String value) {
    log(value);
  }

  void _onChangedDropdownValue(FormDropdownValue? value) {
    log(value.toString());
  }

  void _onPressedPostButton() {
    log('post');
  }
}
