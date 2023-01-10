import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_props.freezed.dart';

@freezed
class FormProps with _$FormProps {
  const factory FormProps({
    required final String title,
    required final String postButtonText,
    required final FormTextFieldProps textField,
    required final FormDropdownButtonProps dropdownButton,
  }) = _FormProps;

  factory FormProps.init() => FormProps(
        title: 'Form',
        postButtonText: 'Post',
        textField: FormTextFieldProps(
          label: 'Text Field',
        ),
        dropdownButton: FormDropdownButtonProps(
          hint: 'Dropdown Button',
        ),
      );
}

@freezed
class FormTextFieldProps with _$FormTextFieldProps {
  factory FormTextFieldProps({
    required final String label,
    final String? value,
  }) = _FormTextFieldProps;
}

@freezed
class FormDropdownButtonProps with _$FormDropdownButtonProps {
  factory FormDropdownButtonProps({
    required final String hint,
    final FormDropdownValue? value,
  }) = _FormDropdownButtonProps;
}

enum FormDropdownValue {
  red,
  green,
  blue,
}
