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
        _buildTextField(),
        _buildDropdownButton(),
        _buildPostButton(),
      ],
    );
  }

  Widget _buildTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: TextField(
        key: const Key('textFieldDemo'),
        controller: TextEditingController(text: props.formValues.textField),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: props.textFieldLabel,
        ),
        onChanged: onChangedTextField,
      ),
    );
  }

  Widget _buildDropdownButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: DropdownButton<FormDropdownValue>(
        key: const Key('dropdownButtonDemo'),
        hint: Text(props.dropdownButtonHint),
        icon: const Icon(Icons.arrow_downward),
        items: FormDropdownValue.values.map(_buildDropdownMenuItem).toList(),
        onChanged: onChangedDropdownValue,
        value: props.formValues.dropdown,
      ),
    );
  }

  DropdownMenuItem<FormDropdownValue> _buildDropdownMenuItem(
    FormDropdownValue value,
  ) {
    return DropdownMenuItem(
      value: value,
      child: Text(value.name),
    );
  }

  Widget _buildPostButton() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: ElevatedButton(
          key: const Key('postButtonDemo'),
          onPressed: props.isEnabledPostButton() ? onPressedPostButton : null,
          child: Text(props.postButtonText),
        ),
      ),
    );
  }
}
