import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormNotifier extends StateNotifier<FormProps> {
  FormNotifier() : super(FormProps.init());

  void onChangedTextField(String value) {
    state = state.copyWith(
      textField: state.textField.copyWith(value: value),
    );
  }

  void onChangedDropdownValue(FormDropdownValue? value) {
    state = state.copyWith(
      dropdownButton: state.dropdownButton.copyWith(value: value),
    );
  }
}

final formNotifierProvider =
    StateNotifierProvider<FormNotifier, FormProps>((ref) => FormNotifier());
