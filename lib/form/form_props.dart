class FormProps {
  final String title;
  final String postButtonText;
  final FormTextFieldProps textField;
  final FormDropdownButtonProps dropdownButton;

  FormProps({
    required this.title,
    required this.postButtonText,
    required this.textField,
    required this.dropdownButton,
  });
}

class FormTextFieldProps {
  final String label;
  final String? value;

  FormTextFieldProps({
    required this.label,
    this.value,
  });
}

class FormDropdownButtonProps {
  final String hint;
  final FormDropdownValue? value;

  FormDropdownButtonProps({
    required this.hint,
    this.value,
  });
}

enum FormDropdownValue {
  red,
  green,
  blue,
}
