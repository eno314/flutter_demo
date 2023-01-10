import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_notifier.dart';
import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_demo/form/form_template.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormPage extends ConsumerWidget {
  static const title = 'Form with Riverpod';
  static const route = '/form';

  const FormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final props = ref.watch(formNotifierProvider);
    return FormTemplate(
      props: props,
      onChangedTextField: (value) => _onChangedTextField(value, ref),
      onChangedDropdownValue: (value) => _onChangedDropdownValue(value, ref),
      onPressedPostButton: () => _onPressedPostButton(ref),
    );
  }

  void _onChangedTextField(String value, WidgetRef ref) {
    final notifier = ref.watch(formNotifierProvider.notifier);
    notifier.onChangedTextField(value);
  }

  void _onChangedDropdownValue(FormDropdownValue? value, WidgetRef ref) {
    final notifier = ref.watch(formNotifierProvider.notifier);
    notifier.onChangedDropdownValue(value);
  }

  void _onPressedPostButton(WidgetRef ref) {
    log('state : ${ref.read(formNotifierProvider)}');
  }
}
