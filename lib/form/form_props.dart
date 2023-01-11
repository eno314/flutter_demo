import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_props.freezed.dart';

class FormProps {
  final String title;
  final String textFieldLabel;
  final String dropdownButtonHint;
  final String postButtonText;
  final FormValuesProps formValues;

  const FormProps({
    required this.title,
    required this.textFieldLabel,
    required this.dropdownButtonHint,
    required this.postButtonText,
    required this.formValues,
  });

  isEnabledPostButton() {
    return formValues.textField != null &&
        formValues.textField!.isNotEmpty &&
        formValues.dropdown != null;
  }
}

@freezed
class FormValuesProps with _$FormValuesProps {
  factory FormValuesProps({
    final String? textField,
    final FormDropdownValue? dropdown,
  }) = _FormValuesProps;
}

enum FormDropdownValue {
  work,
  hobby,
  housework,
}
