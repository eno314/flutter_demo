import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final formUsecaseProvider = Provider((ref) => FormUsecase());

class FormUsecase {
  final Map<int, FormData> _formDataRepository = {};

  Future<FormResponse> add(FormRequest request) async {
    final formData = _create(
      id: _nextId(),
      text: request.text,
      dropdownItem: request.dropdownItem,
    );

    await _save(formData);

    return FormResponse(data: formData);
  }

  Future<FormResponse> update(FormRequest request) async {
    final formData = _create(
      id: request.id,
      text: request.text,
      dropdownItem: request.dropdownItem,
    );

    await _save(formData);

    return FormResponse(data: formData);
  }

  int _nextId() => _formDataRepository.length;

  FormData _create({
    required int? id,
    required String? text,
    required String? dropdownItem,
  }) {
    if (id == null || text == null || dropdownItem == null) {
      throw ArgumentError('id, text, dropdownItem must not be null');
    }

    return FormData(
      id: id,
      text: text,
      dropdownItem: dropdownItem,
    );
  }

  Future<void> _save(FormData formData) async {
    _formDataRepository[formData.id] = formData;

    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 1000));

    log('current repository : $_formDataRepository');
  }
}

class FormRequest {
  final int? id;
  final String? text;
  final String? dropdownItem;

  FormRequest({
    this.id,
    this.text,
    this.dropdownItem,
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

  @override
  String toString() {
    return 'FormData{id: $id, text: $text, dropdownItem: $dropdownItem}';
  }
}

class FormResponse {
  final FormData data;

  FormResponse({
    required this.data,
  });
}
