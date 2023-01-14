import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final formUsecaseProvider = Provider((ref) => FormUsecase());

class FormUsecase {
  final List<FormData> _formDataRepository = [];

  Future<FormAddResponse> add(FormAddRequest request) async {
    final formData = FormData(
      id: _formDataRepository.length,
      text: request.text,
      dropdownItem: request.dropdownItem,
    );

    _formDataRepository.add(formData);

    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));

    log('current form data list : $_formDataRepository');

    return FormAddResponse(addedFormData: formData);
  }
}

class FormAddRequest {
  final String text;
  final String dropdownItem;

  FormAddRequest({
    required this.text,
    required this.dropdownItem,
  });
}

class FormData {
  final int id;
  final String text;
  final String dropdownItem;

  FormData({
    required this.id,
    required this.text,
    required this.dropdownItem,
  });
}

class FormAddResponse {
  final FormData? addedFormData;

  FormAddResponse({
    required this.addedFormData,
  });
}
