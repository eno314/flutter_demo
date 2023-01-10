class FormProps {
  final String title;
  final FormTextFieldProps textField;

  FormProps({
    required this.title,
    required this.textField,
  });
}

class FormTextFieldProps {
  final String label;
  final String? value;

  FormTextFieldProps({
    required this.label,
    required this.value,
  });
}
