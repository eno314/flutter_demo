import 'package:flutter_demo/form/form_props.dart';
import 'package:flutter_demo/form/form_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormNotifier extends StateNotifier<FormValuesProps> {
  final FormUsecase _formUsecase;

  FormNotifier(this._formUsecase) : super(FormValuesProps());

  void onChangedTextField(String value) {
    state = state.copyWith(textField: value);
  }

  void onChangedDropdownValue(FormDropdownValue? value) {
    state = state.copyWith(dropdown: value);
  }

  void post() async {
    state = state.copyWith(isPosting: true);
    try {
      final request = state.toAddRequest();
      if (request == null) {
        return;
      }

      final response = await _formUsecase.add(request);
      final addedFormData = response.addedFormData;
      if (addedFormData == null) {
        return;
      }

      state = state.copyWith(id: addedFormData.id);
    } finally {
      state = state.copyWith(isPosting: false);
    }
  }

  void reset() {
    state = FormValuesProps();
  }
}

final formNotifierProvider =
    StateNotifierProvider<FormNotifier, FormValuesProps>((ref) {
  final formUsecase = ref.watch(formUsecaseProvider);
  return FormNotifier(formUsecase);
});
