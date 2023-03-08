// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_gpt_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatGPTInputProps {
  String get apiKey => throw _privateConstructorUsedError;
  String get chatMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatGPTInputPropsCopyWith<ChatGPTInputProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatGPTInputPropsCopyWith<$Res> {
  factory $ChatGPTInputPropsCopyWith(
          ChatGPTInputProps value, $Res Function(ChatGPTInputProps) then) =
      _$ChatGPTInputPropsCopyWithImpl<$Res, ChatGPTInputProps>;
  @useResult
  $Res call({String apiKey, String chatMessage});
}

/// @nodoc
class _$ChatGPTInputPropsCopyWithImpl<$Res, $Val extends ChatGPTInputProps>
    implements $ChatGPTInputPropsCopyWith<$Res> {
  _$ChatGPTInputPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? chatMessage = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      chatMessage: null == chatMessage
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatGPTInputPropsCopyWith<$Res>
    implements $ChatGPTInputPropsCopyWith<$Res> {
  factory _$$_ChatGPTInputPropsCopyWith(_$_ChatGPTInputProps value,
          $Res Function(_$_ChatGPTInputProps) then) =
      __$$_ChatGPTInputPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, String chatMessage});
}

/// @nodoc
class __$$_ChatGPTInputPropsCopyWithImpl<$Res>
    extends _$ChatGPTInputPropsCopyWithImpl<$Res, _$_ChatGPTInputProps>
    implements _$$_ChatGPTInputPropsCopyWith<$Res> {
  __$$_ChatGPTInputPropsCopyWithImpl(
      _$_ChatGPTInputProps _value, $Res Function(_$_ChatGPTInputProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? chatMessage = null,
  }) {
    return _then(_$_ChatGPTInputProps(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      chatMessage: null == chatMessage
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatGPTInputProps implements _ChatGPTInputProps {
  _$_ChatGPTInputProps({required this.apiKey, required this.chatMessage});

  @override
  final String apiKey;
  @override
  final String chatMessage;

  @override
  String toString() {
    return 'ChatGPTInputProps(apiKey: $apiKey, chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatGPTInputProps &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.chatMessage, chatMessage) ||
                other.chatMessage == chatMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey, chatMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatGPTInputPropsCopyWith<_$_ChatGPTInputProps> get copyWith =>
      __$$_ChatGPTInputPropsCopyWithImpl<_$_ChatGPTInputProps>(
          this, _$identity);
}

abstract class _ChatGPTInputProps implements ChatGPTInputProps {
  factory _ChatGPTInputProps(
      {required final String apiKey,
      required final String chatMessage}) = _$_ChatGPTInputProps;

  @override
  String get apiKey;
  @override
  String get chatMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatGPTInputPropsCopyWith<_$_ChatGPTInputProps> get copyWith =>
      throw _privateConstructorUsedError;
}
