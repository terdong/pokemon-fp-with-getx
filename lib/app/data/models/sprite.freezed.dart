// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sprite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sprite _$SpriteFromJson(Map<String, dynamic> json) {
  return _Sprite.fromJson(json);
}

/// @nodoc
class _$SpriteTearOff {
  const _$SpriteTearOff();

  _Sprite call(String frontDefault) {
    return _Sprite(
      frontDefault,
    );
  }

  Sprite fromJson(Map<String, Object?> json) {
    return Sprite.fromJson(json);
  }
}

/// @nodoc
const $Sprite = _$SpriteTearOff();

/// @nodoc
mixin _$Sprite {
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpriteCopyWith<Sprite> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpriteCopyWith<$Res> {
  factory $SpriteCopyWith(Sprite value, $Res Function(Sprite) then) =
      _$SpriteCopyWithImpl<$Res>;
  $Res call({String frontDefault});
}

/// @nodoc
class _$SpriteCopyWithImpl<$Res> implements $SpriteCopyWith<$Res> {
  _$SpriteCopyWithImpl(this._value, this._then);

  final Sprite _value;
  // ignore: unused_field
  final $Res Function(Sprite) _then;

  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefault: frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SpriteCopyWith<$Res> implements $SpriteCopyWith<$Res> {
  factory _$SpriteCopyWith(_Sprite value, $Res Function(_Sprite) then) =
      __$SpriteCopyWithImpl<$Res>;
  @override
  $Res call({String frontDefault});
}

/// @nodoc
class __$SpriteCopyWithImpl<$Res> extends _$SpriteCopyWithImpl<$Res>
    implements _$SpriteCopyWith<$Res> {
  __$SpriteCopyWithImpl(_Sprite _value, $Res Function(_Sprite) _then)
      : super(_value, (v) => _then(v as _Sprite));

  @override
  _Sprite get _value => super._value as _Sprite;

  @override
  $Res call({
    Object? frontDefault = freezed,
  }) {
    return _then(_Sprite(
      frontDefault == freezed
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sprite implements _Sprite {
  _$_Sprite(this.frontDefault);

  factory _$_Sprite.fromJson(Map<String, dynamic> json) =>
      _$$_SpriteFromJson(json);

  @override
  final String frontDefault;

  @override
  String toString() {
    return 'Sprite(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sprite &&
            const DeepCollectionEquality()
                .equals(other.frontDefault, frontDefault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(frontDefault));

  @JsonKey(ignore: true)
  @override
  _$SpriteCopyWith<_Sprite> get copyWith =>
      __$SpriteCopyWithImpl<_Sprite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpriteToJson(this);
  }
}

abstract class _Sprite implements Sprite {
  factory _Sprite(String frontDefault) = _$_Sprite;

  factory _Sprite.fromJson(Map<String, dynamic> json) = _$_Sprite.fromJson;

  @override
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$SpriteCopyWith<_Sprite> get copyWith => throw _privateConstructorUsedError;
}
