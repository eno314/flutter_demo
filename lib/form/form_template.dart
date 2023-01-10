import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_props.dart';

class FormTemplate extends StatelessWidget {
  final FormProps props;
  final ValueChanged<String> onChangedTextField;
  final ValueChanged<FormDropdownValue?> onChangedDropdownValue;
  final VoidCallback onPressedPostButton;

  const FormTemplate({
    super.key,
    required this.props,
    required this.onChangedTextField,
    required this.onChangedDropdownValue,
    required this.onPressedPostButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(props.title),
      ),
      body: _buildFormList(context),
    );
  }

  Widget _buildFormList(BuildContext context) {
    return ListView(
      children: [
        _buildTextField(props.textField),
        _buildDropdownButton(props.dropdownButton),
        _buildPostButton(props.postButtonText),
      ],
    );
  }

  Widget _buildTextField(FormTextFieldProps textFieldProps) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: textFieldProps.label,
        ),
        onChanged: onChangedTextField,
      ),
    );
  }

  Widget _buildDropdownButton(FormDropdownButtonProps dropdownButtonProps) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: DropdownButton<FormDropdownValue>(
        hint: Text(dropdownButtonProps.hint),
        icon: const Icon(Icons.arrow_downward),
        items: FormDropdownValue.values.map(_buildDropdownMenuItem).toList(),
        onChanged: onChangedDropdownValue,
        value: dropdownButtonProps.value,
      ),
    );
  }

  DropdownMenuItem<FormDropdownValue> _buildDropdownMenuItem(
      FormDropdownValue value) {
    return DropdownMenuItem(
      value: value,
      child: Text(value.name),
    );
  }

  Widget _buildPostButton(String buttonText) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: ElevatedButton(
          onPressed: onPressedPostButton,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
