import 'package:flutter_demo/form/form_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_props.freezed.dart';

class FormProps {
  final String title;
  final String textFieldLabel;
  final String dropdownButtonHint;
  final String addButtonText;
  final String updateButtonText;
  final FormValuesProps formValues;

  const FormProps({
    required this.title,
    required this.textFieldLabel,
    required this.dropdownButtonHint,
    required this.addButtonText,
    required this.updateButtonText,
    required this.formValues,
  });

  bool isEnabledPostButton() {
    return formValues.textField != null &&
        formValues.textField!.isNotEmpty &&
        formValues.dropdown != null;
  }

  String getPostButtonText() {
    return formValues.id == null ? addButtonText : updateButtonText;
  }
}

@freezed
class FormValuesProps with _$FormValuesProps {
  const FormValuesProps._();
  factory FormValuesProps({
    final int? id,
    final String? textField,
    final FormDropdownValue? dropdown,
    @Default(false) final bool isPosting,
  }) = _FormValuesProps;

  FormAddRequest? toAddRequest() {
    final textFieldValue = textField;
    final dropdownValue = dropdown;
    if (textFieldValue == null || dropdownValue == null) {
      return null;
    }

    return FormAddRequest(
      text: textFieldValue,
      dropdownItem: dropdownValue.name,
    );
  }
}

enum FormDropdownValue {
  work,
  hobby,
  housework,
}
