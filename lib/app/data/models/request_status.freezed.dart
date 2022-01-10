// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestStatus _$RequestStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return InitialRequestStatus.fromJson(json);
    case 'loading':
      return LoadingRequestStatus.fromJson(json);
    case 'success':
      return SuccessRequestStatus.fromJson(json);
    case 'error':
      return ErrorRequestStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RequestStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$RequestStatusTearOff {
  const _$RequestStatusTearOff();

  InitialRequestStatus initial() {
    return InitialRequestStatus();
  }

  LoadingRequestStatus loading() {
    return LoadingRequestStatus();
  }

  SuccessRequestStatus success(Pokemon pokemon) {
    return SuccessRequestStatus(
      pokemon,
    );
  }

  ErrorRequestStatus error(String error) {
    return ErrorRequestStatus(
      error,
    );
  }

  RequestStatus fromJson(Map<String, Object?> json) {
    return RequestStatus.fromJson(json);
  }
}

/// @nodoc
const $RequestStatus = _$RequestStatusTearOff();

/// @nodoc
mixin _$RequestStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRequestStatus value) initial,
    required TResult Function(LoadingRequestStatus value) loading,
    required TResult Function(SuccessRequestStatus value) success,
    required TResult Function(ErrorRequestStatus value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStatusCopyWith<$Res> {
  factory $RequestStatusCopyWith(
          RequestStatus value, $Res Function(RequestStatus) then) =
      _$RequestStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestStatusCopyWithImpl<$Res>
    implements $RequestStatusCopyWith<$Res> {
  _$RequestStatusCopyWithImpl(this._value, this._then);

  final RequestStatus _value;
  // ignore: unused_field
  final $Res Function(RequestStatus) _then;
}

/// @nodoc
abstract class $InitialRequestStatusCopyWith<$Res> {
  factory $InitialRequestStatusCopyWith(InitialRequestStatus value,
          $Res Function(InitialRequestStatus) then) =
      _$InitialRequestStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialRequestStatusCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res>
    implements $InitialRequestStatusCopyWith<$Res> {
  _$InitialRequestStatusCopyWithImpl(
      InitialRequestStatus _value, $Res Function(InitialRequestStatus) _then)
      : super(_value, (v) => _then(v as InitialRequestStatus));

  @override
  InitialRequestStatus get _value => super._value as InitialRequestStatus;
}

/// @nodoc
@JsonSerializable()
class _$InitialRequestStatus implements InitialRequestStatus {
  _$InitialRequestStatus({String? $type}) : $type = $type ?? 'initial';

  factory _$InitialRequestStatus.fromJson(Map<String, dynamic> json) =>
      _$$InitialRequestStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RequestStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialRequestStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRequestStatus value) initial,
    required TResult Function(LoadingRequestStatus value) loading,
    required TResult Function(SuccessRequestStatus value) success,
    required TResult Function(ErrorRequestStatus value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialRequestStatusToJson(this);
  }
}

abstract class InitialRequestStatus implements RequestStatus {
  factory InitialRequestStatus() = _$InitialRequestStatus;

  factory InitialRequestStatus.fromJson(Map<String, dynamic> json) =
      _$InitialRequestStatus.fromJson;
}

/// @nodoc
abstract class $LoadingRequestStatusCopyWith<$Res> {
  factory $LoadingRequestStatusCopyWith(LoadingRequestStatus value,
          $Res Function(LoadingRequestStatus) then) =
      _$LoadingRequestStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingRequestStatusCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res>
    implements $LoadingRequestStatusCopyWith<$Res> {
  _$LoadingRequestStatusCopyWithImpl(
      LoadingRequestStatus _value, $Res Function(LoadingRequestStatus) _then)
      : super(_value, (v) => _then(v as LoadingRequestStatus));

  @override
  LoadingRequestStatus get _value => super._value as LoadingRequestStatus;
}

/// @nodoc
@JsonSerializable()
class _$LoadingRequestStatus implements LoadingRequestStatus {
  _$LoadingRequestStatus({String? $type}) : $type = $type ?? 'loading';

  factory _$LoadingRequestStatus.fromJson(Map<String, dynamic> json) =>
      _$$LoadingRequestStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RequestStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingRequestStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRequestStatus value) initial,
    required TResult Function(LoadingRequestStatus value) loading,
    required TResult Function(SuccessRequestStatus value) success,
    required TResult Function(ErrorRequestStatus value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingRequestStatusToJson(this);
  }
}

abstract class LoadingRequestStatus implements RequestStatus {
  factory LoadingRequestStatus() = _$LoadingRequestStatus;

  factory LoadingRequestStatus.fromJson(Map<String, dynamic> json) =
      _$LoadingRequestStatus.fromJson;
}

/// @nodoc
abstract class $SuccessRequestStatusCopyWith<$Res> {
  factory $SuccessRequestStatusCopyWith(SuccessRequestStatus value,
          $Res Function(SuccessRequestStatus) then) =
      _$SuccessRequestStatusCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon});

  $PokemonCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$SuccessRequestStatusCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res>
    implements $SuccessRequestStatusCopyWith<$Res> {
  _$SuccessRequestStatusCopyWithImpl(
      SuccessRequestStatus _value, $Res Function(SuccessRequestStatus) _then)
      : super(_value, (v) => _then(v as SuccessRequestStatus));

  @override
  SuccessRequestStatus get _value => super._value as SuccessRequestStatus;

  @override
  $Res call({
    Object? pokemon = freezed,
  }) {
    return _then(SuccessRequestStatus(
      pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
    ));
  }

  @override
  $PokemonCopyWith<$Res> get pokemon {
    return $PokemonCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessRequestStatus implements SuccessRequestStatus {
  _$SuccessRequestStatus(this.pokemon, {String? $type})
      : $type = $type ?? 'success';

  factory _$SuccessRequestStatus.fromJson(Map<String, dynamic> json) =>
      _$$SuccessRequestStatusFromJson(json);

  @override
  final Pokemon pokemon;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RequestStatus.success(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessRequestStatus &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemon));

  @JsonKey(ignore: true)
  @override
  $SuccessRequestStatusCopyWith<SuccessRequestStatus> get copyWith =>
      _$SuccessRequestStatusCopyWithImpl<SuccessRequestStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) success,
    required TResult Function(String error) error,
  }) {
    return success(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
  }) {
    return success?.call(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRequestStatus value) initial,
    required TResult Function(LoadingRequestStatus value) loading,
    required TResult Function(SuccessRequestStatus value) success,
    required TResult Function(ErrorRequestStatus value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessRequestStatusToJson(this);
  }
}

abstract class SuccessRequestStatus implements RequestStatus {
  factory SuccessRequestStatus(Pokemon pokemon) = _$SuccessRequestStatus;

  factory SuccessRequestStatus.fromJson(Map<String, dynamic> json) =
      _$SuccessRequestStatus.fromJson;

  Pokemon get pokemon;
  @JsonKey(ignore: true)
  $SuccessRequestStatusCopyWith<SuccessRequestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorRequestStatusCopyWith<$Res> {
  factory $ErrorRequestStatusCopyWith(
          ErrorRequestStatus value, $Res Function(ErrorRequestStatus) then) =
      _$ErrorRequestStatusCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorRequestStatusCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res>
    implements $ErrorRequestStatusCopyWith<$Res> {
  _$ErrorRequestStatusCopyWithImpl(
      ErrorRequestStatus _value, $Res Function(ErrorRequestStatus) _then)
      : super(_value, (v) => _then(v as ErrorRequestStatus));

  @override
  ErrorRequestStatus get _value => super._value as ErrorRequestStatus;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ErrorRequestStatus(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorRequestStatus implements ErrorRequestStatus {
  _$ErrorRequestStatus(this.error, {String? $type}) : $type = $type ?? 'error';

  factory _$ErrorRequestStatus.fromJson(Map<String, dynamic> json) =>
      _$$ErrorRequestStatusFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RequestStatus.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorRequestStatus &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorRequestStatusCopyWith<ErrorRequestStatus> get copyWith =>
      _$ErrorRequestStatusCopyWithImpl<ErrorRequestStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Pokemon pokemon) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Pokemon pokemon)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRequestStatus value) initial,
    required TResult Function(LoadingRequestStatus value) loading,
    required TResult Function(SuccessRequestStatus value) success,
    required TResult Function(ErrorRequestStatus value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRequestStatus value)? initial,
    TResult Function(LoadingRequestStatus value)? loading,
    TResult Function(SuccessRequestStatus value)? success,
    TResult Function(ErrorRequestStatus value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorRequestStatusToJson(this);
  }
}

abstract class ErrorRequestStatus implements RequestStatus {
  factory ErrorRequestStatus(String error) = _$ErrorRequestStatus;

  factory ErrorRequestStatus.fromJson(Map<String, dynamic> json) =
      _$ErrorRequestStatus.fromJson;

  String get error;
  @JsonKey(ignore: true)
  $ErrorRequestStatusCopyWith<ErrorRequestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
