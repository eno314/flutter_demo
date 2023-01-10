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
      onChangedTextField: _onChangedTextField,
      props: FormProps(
        title: title,
        textField: FormTextFieldProps(
          label: 'please input any text.',
        ),
      ),
    );
  }

  void _onChangedTextField(String value) {
    log(value);
  }
}
