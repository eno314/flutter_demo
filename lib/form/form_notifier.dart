import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormNotifier extends StateNotifier<FormValuesProps> {
  FormNotifier() : super(FormValuesProps());

  void onChangedTextField(String value) {
    state = state.copyWith(textField: value);
  }

  void onChangedDropdownValue(FormDropdownValue? value) {
    state = state.copyWith(dropdown: value);
  }
}

final formNotifierProvider =
    StateNotifierProvider<FormNotifier, FormValuesProps>(
  (ref) => FormNotifier(),
);
