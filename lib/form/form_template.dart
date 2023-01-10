import 'package:flutter/material.dart';
import 'package:flutter_demo/form/form_props.dart';

class FormTemplate extends StatelessWidget {
  final FormProps props;
  final ValueChanged<String> onChangedTextField;

  const FormTemplate({
    super.key,
    required this.props,
    required this.onChangedTextField,
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
}
