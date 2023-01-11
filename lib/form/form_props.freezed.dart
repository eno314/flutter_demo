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
mixin _$FormValuesProps {
  String? get textField => throw _privateConstructorUsedError;
  FormDropdownValue? get dropdown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormValuesPropsCopyWith<FormValuesProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormValuesPropsCopyWith<$Res> {
  factory $FormValuesPropsCopyWith(
          FormValuesProps value, $Res Function(FormValuesProps) then) =
      _$FormValuesPropsCopyWithImpl<$Res, FormValuesProps>;
  @useResult
  $Res call({String? textField, FormDropdownValue? dropdown});
}

/// @nodoc
class _$FormValuesPropsCopyWithImpl<$Res, $Val extends FormValuesProps>
    implements $FormValuesPropsCopyWith<$Res> {
  _$FormValuesPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textField = freezed,
    Object? dropdown = freezed,
  }) {
    return _then(_value.copyWith(
      textField: freezed == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as String?,
      dropdown: freezed == dropdown
          ? _value.dropdown
          : dropdown // ignore: cast_nullable_to_non_nullable
              as FormDropdownValue?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormValuesPropsCopyWith<$Res>
    implements $FormValuesPropsCopyWith<$Res> {
  factory _$$_FormValuesPropsCopyWith(
          _$_FormValuesProps value, $Res Function(_$_FormValuesProps) then) =
      __$$_FormValuesPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? textField, FormDropdownValue? dropdown});
}

/// @nodoc
class __$$_FormValuesPropsCopyWithImpl<$Res>
    extends _$FormValuesPropsCopyWithImpl<$Res, _$_FormValuesProps>
    implements _$$_FormValuesPropsCopyWith<$Res> {
  __$$_FormValuesPropsCopyWithImpl(
      _$_FormValuesProps _value, $Res Function(_$_FormValuesProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textField = freezed,
    Object? dropdown = freezed,
  }) {
    return _then(_$_FormValuesProps(
      textField: freezed == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as String?,
      dropdown: freezed == dropdown
          ? _value.dropdown
          : dropdown // ignore: cast_nullable_to_non_nullable
              as FormDropdownValue?,
    ));
  }
}

/// @nodoc

class _$_FormValuesProps implements _FormValuesProps {
  _$_FormValuesProps({this.textField, this.dropdown});

  @override
  final String? textField;
  @override
  final FormDropdownValue? dropdown;

  @override
  String toString() {
    return 'FormValuesProps(textField: $textField, dropdown: $dropdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormValuesProps &&
            (identical(other.textField, textField) ||
                other.textField == textField) &&
            (identical(other.dropdown, dropdown) ||
                other.dropdown == dropdown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textField, dropdown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormValuesPropsCopyWith<_$_FormValuesProps> get copyWith =>
      __$$_FormValuesPropsCopyWithImpl<_$_FormValuesProps>(this, _$identity);
}

abstract class _FormValuesProps implements FormValuesProps {
  factory _FormValuesProps(
      {final String? textField,
      final FormDropdownValue? dropdown}) = _$_FormValuesProps;

  @override
  String? get textField;
  @override
  FormDropdownValue? get dropdown;
  @override
  @JsonKey(ignore: true)
  _$$_FormValuesPropsCopyWith<_$_FormValuesProps> get copyWith =>
      throw _privateConstructorUsedError;
}
