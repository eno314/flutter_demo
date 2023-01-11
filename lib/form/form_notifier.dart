import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormValuesNotifier extends StateNotifier<FormValuesProps> {
  FormValuesNotifier() : super(FormValuesProps());

  void onChangedTextField(String value) {
    state = state.copyWith(textField: value);
  }

  void onChangedDropdownValue(FormDropdownValue? value) {
    state = state.copyWith(dropdown: value);
  }
}

final formValuesNotifierProvider =
    StateNotifierProvider<FormValuesNotifier, FormValuesProps>(
  (ref) => FormValuesNotifier(),
);
