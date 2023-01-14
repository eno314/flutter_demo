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

  Future<void> post() async {
    state = state.copyWith(isPosting: true);

    final formData = (await _post(state)).data;

    state = state.copyWith(
      id: formData.id,
      textField: formData.text,
      isPosting: false,
    );
  }

  Future<FormResponse> _post(FormValuesProps props) async {
    final request = FormRequest(
      id: props.id,
      text: props.textField,
      dropdownItem: props.dropdown?.name,
    );

    if (request.id == null) {
      return await _formUsecase.add(request);
    } else {
      return await _formUsecase.update(request);
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
