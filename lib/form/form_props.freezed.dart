// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormProps {
  String get title => throw _privateConstructorUsedError;
  String get postButtonText => throw _privateConstructorUsedError;
  FormTextFieldProps get textField => throw _privateConstructorUsedError;
  FormDropdownButtonProps get dropdownButton =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormPropsCopyWith<FormProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormPropsCopyWith<$Res> {
  factory $FormPropsCopyWith(FormProps value, $Res Function(FormProps) then) =
      _$FormPropsCopyWithImpl<$Res, FormProps>;
  @useResult
  $Res call(
      {String title,
      String postButtonText,
      FormTextFieldProps textField,
      FormDropdownButtonProps dropdownButton});

  $FormTextFieldPropsCopyWith<$Res> get textField;
  $FormDropdownButtonPropsCopyWith<$Res> get dropdownButton;
}

/// @nodoc
class _$FormPropsCopyWithImpl<$Res, $Val extends FormProps>
    implements $FormPropsCopyWith<$Res> {
  _$FormPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? postButtonText = null,
    Object? textField = null,
    Object? dropdownButton = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      postButtonText: null == postButtonText
          ? _value.postButtonText
          : postButtonText // ignore: cast_nullable_to_non_nullable
              as String,
      textField: null == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as FormTextFieldProps,
      dropdownButton: null == dropdownButton
          ? _value.dropdownButton
          : dropdownButton // ignore: cast_nullable_to_non_nullable
              as FormDropdownButtonProps,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormTextFieldPropsCopyWith<$Res> get textField {
    return $FormTextFieldPropsCopyWith<$Res>(_value.textField, (value) {
      return _then(_value.copyWith(textField: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormDropdownButtonPropsCopyWith<$Res> get dropdownButton {
    return $FormDropdownButtonPropsCopyWith<$Res>(_value.dropdownButton,
        (value) {
      return _then(_value.copyWith(dropdownButton: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FormPropsCopyWith<$Res> implements $FormPropsCopyWith<$Res> {
  factory _$$_FormPropsCopyWith(
          _$_FormProps value, $Res Function(_$_FormProps) then) =
      __$$_FormPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String postButtonText,
      FormTextFieldProps textField,
      FormDropdownButtonProps dropdownButton});

  @override
  $FormTextFieldPropsCopyWith<$Res> get textField;
  @override
  $FormDropdownButtonPropsCopyWith<$Res> get dropdownButton;
}

/// @nodoc
class __$$_FormPropsCopyWithImpl<$Res>
    extends _$FormPropsCopyWithImpl<$Res, _$_FormProps>
    implements _$$_FormPropsCopyWith<$Res> {
  __$$_FormPropsCopyWithImpl(
      _$_FormProps _value, $Res Function(_$_FormProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? postButtonText = null,
    Object? textField = null,
    Object? dropdownButton = null,
  }) {
    return _then(_$_FormProps(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      postButtonText: null == postButtonText
          ? _value.postButtonText
          : postButtonText // ignore: cast_nullable_to_non_nullable
              as String,
      textField: null == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as FormTextFieldProps,
      dropdownButton: null == dropdownButton
          ? _value.dropdownButton
          : dropdownButton // ignore: cast_nullable_to_non_nullable
              as FormDropdownButtonProps,
    ));
  }
}

/// @nodoc

class _$_FormProps implements _FormProps {
  const _$_FormProps(
      {required this.title,
      required this.postButtonText,
      required this.textField,
      required this.dropdownButton});

  @override
  final String title;
  @override
  final String postButtonText;
  @override
  final FormTextFieldProps textField;
  @override
  final FormDropdownButtonProps dropdownButton;

  @override
  String toString() {
    return 'FormProps(title: $title, postButtonText: $postButtonText, textField: $textField, dropdownButton: $dropdownButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormProps &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.postButtonText, postButtonText) ||
                other.postButtonText == postButtonText) &&
            (identical(other.textField, textField) ||
                other.textField == textField) &&
            (identical(other.dropdownButton, dropdownButton) ||
                other.dropdownButton == dropdownButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, postButtonText, textField, dropdownButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormPropsCopyWith<_$_FormProps> get copyWith =>
      __$$_FormPropsCopyWithImpl<_$_FormProps>(this, _$identity);
}

abstract class _FormProps implements FormProps {
  const factory _FormProps(
      {required final String title,
      required final String postButtonText,
      required final FormTextFieldProps textField,
      required final FormDropdownButtonProps dropdownButton}) = _$_FormProps;

  @override
  String get title;
  @override
  String get postButtonText;
  @override
  FormTextFieldProps get textField;
  @override
  FormDropdownButtonProps get dropdownButton;
  @override
  @JsonKey(ignore: true)
  _$$_FormPropsCopyWith<_$_FormProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormTextFieldProps {
  String get label => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormTextFieldPropsCopyWith<FormTextFieldProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormTextFieldPropsCopyWith<$Res> {
  factory $FormTextFieldPropsCopyWith(
          FormTextFieldProps value, $Res Function(FormTextFieldProps) then) =
      _$FormTextFieldPropsCopyWithImpl<$Res, FormTextFieldProps>;
  @useResult
  $Res call({String label, String? value});
}

/// @nodoc
class _$FormTextFieldPropsCopyWithImpl<$Res, $Val extends FormTextFieldProps>
    implements $FormTextFieldPropsCopyWith<$Res> {
  _$FormTextFieldPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormTextFieldPropsCopyWith<$Res>
    implements $FormTextFieldPropsCopyWith<$Res> {
  factory _$$_FormTextFieldPropsCopyWith(_$_FormTextFieldProps value,
          $Res Function(_$_FormTextFieldProps) then) =
      __$$_FormTextFieldPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? value});
}

/// @nodoc
class __$$_FormTextFieldPropsCopyWithImpl<$Res>
    extends _$FormTextFieldPropsCopyWithImpl<$Res, _$_FormTextFieldProps>
    implements _$$_FormTextFieldPropsCopyWith<$Res> {
  __$$_FormTextFieldPropsCopyWithImpl(
      _$_FormTextFieldProps _value, $Res Function(_$_FormTextFieldProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_$_FormTextFieldProps(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FormTextFieldProps implements _FormTextFieldProps {
  _$_FormTextFieldProps({required this.label, this.value});

  @override
  final String label;
  @override
  final String? value;

  @override
  String toString() {
    return 'FormTextFieldProps(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormTextFieldProps &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormTextFieldPropsCopyWith<_$_FormTextFieldProps> get copyWith =>
      __$$_FormTextFieldPropsCopyWithImpl<_$_FormTextFieldProps>(
          this, _$identity);
}

abstract class _FormTextFieldProps implements FormTextFieldProps {
  factory _FormTextFieldProps(
      {required final String label,
      final String? value}) = _$_FormTextFieldProps;

  @override
  String get label;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_FormTextFieldPropsCopyWith<_$_FormTextFieldProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormDropdownButtonProps {
  String get hint => throw _privateConstructorUsedError;
  FormDropdownValue? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormDropdownButtonPropsCopyWith<FormDropdownButtonProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDropdownButtonPropsCopyWith<$Res> {
  factory $FormDropdownButtonPropsCopyWith(FormDropdownButtonProps value,
          $Res Function(FormDropdownButtonProps) then) =
      _$FormDropdownButtonPropsCopyWithImpl<$Res, FormDropdownButtonProps>;
  @useResult
  $Res call({String hint, FormDropdownValue? value});
}

/// @nodoc
class _$FormDropdownButtonPropsCopyWithImpl<$Res,
        $Val extends FormDropdownButtonProps>
    implements $FormDropdownButtonPropsCopyWith<$Res> {
  _$FormDropdownButtonPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FormDropdownValue?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormDropdownButtonPropsCopyWith<$Res>
    implements $FormDropdownButtonPropsCopyWith<$Res> {
  factory _$$_FormDropdownButtonPropsCopyWith(_$_FormDropdownButtonProps value,
          $Res Function(_$_FormDropdownButtonProps) then) =
      __$$_FormDropdownButtonPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hint, FormDropdownValue? value});
}

/// @nodoc
class __$$_FormDropdownButtonPropsCopyWithImpl<$Res>
    extends _$FormDropdownButtonPropsCopyWithImpl<$Res,
        _$_FormDropdownButtonProps>
    implements _$$_FormDropdownButtonPropsCopyWith<$Res> {
  __$$_FormDropdownButtonPropsCopyWithImpl(_$_FormDropdownButtonProps _value,
      $Res Function(_$_FormDropdownButtonProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hint = null,
    Object? value = freezed,
  }) {
    return _then(_$_FormDropdownButtonProps(
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FormDropdownValue?,
    ));
  }
}

/// @nodoc

class _$_FormDropdownButtonProps implements _FormDropdownButtonProps {
  _$_FormDropdownButtonProps({required this.hint, this.value});

  @override
  final String hint;
  @override
  final FormDropdownValue? value;

  @override
  String toString() {
    return 'FormDropdownButtonProps(hint: $hint, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormDropdownButtonProps &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hint, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormDropdownButtonPropsCopyWith<_$_FormDropdownButtonProps>
      get copyWith =>
          __$$_FormDropdownButtonPropsCopyWithImpl<_$_FormDropdownButtonProps>(
              this, _$identity);
}

abstract class _FormDropdownButtonProps implements FormDropdownButtonProps {
  factory _FormDropdownButtonProps(
      {required final String hint,
      final FormDropdownValue? value}) = _$_FormDropdownButtonProps;

  @override
  String get hint;
  @override
  FormDropdownValue? get value;
  @override
  @JsonKey(ignore: true)
  _$$_FormDropdownButtonPropsCopyWith<_$_FormDropdownButtonProps>
      get copyWith => throw _privateConstructorUsedError;
}
