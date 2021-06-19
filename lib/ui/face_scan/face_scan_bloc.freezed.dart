// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'face_scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FaceScanStateTearOff {
  const _$FaceScanStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Scanning scanning({required bool firstScan}) {
    return _Scanning(
      firstScan: firstScan,
    );
  }

  _Finished finished() {
    return const _Finished();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $FaceScanState = _$FaceScanStateTearOff();

/// @nodoc
mixin _$FaceScanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstScan) scanning,
    required TResult Function() finished,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstScan)? scanning,
    TResult Function()? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceScanStateCopyWith<$Res> {
  factory $FaceScanStateCopyWith(
          FaceScanState value, $Res Function(FaceScanState) then) =
      _$FaceScanStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FaceScanStateCopyWithImpl<$Res>
    implements $FaceScanStateCopyWith<$Res> {
  _$FaceScanStateCopyWithImpl(this._value, this._then);

  final FaceScanState _value;
  // ignore: unused_field
  final $Res Function(FaceScanState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FaceScanState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstScan) scanning,
    required TResult Function() finished,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstScan)? scanning,
    TResult Function()? finished,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FaceScanState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ScanningCopyWith<$Res> {
  factory _$ScanningCopyWith(_Scanning value, $Res Function(_Scanning) then) =
      __$ScanningCopyWithImpl<$Res>;
  $Res call({bool firstScan});
}

/// @nodoc
class __$ScanningCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements _$ScanningCopyWith<$Res> {
  __$ScanningCopyWithImpl(_Scanning _value, $Res Function(_Scanning) _then)
      : super(_value, (v) => _then(v as _Scanning));

  @override
  _Scanning get _value => super._value as _Scanning;

  @override
  $Res call({
    Object? firstScan = freezed,
  }) {
    return _then(_Scanning(
      firstScan: firstScan == freezed
          ? _value.firstScan
          : firstScan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Scanning implements _Scanning {
  const _$_Scanning({required this.firstScan});

  @override
  final bool firstScan;

  @override
  String toString() {
    return 'FaceScanState.scanning(firstScan: $firstScan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Scanning &&
            (identical(other.firstScan, firstScan) ||
                const DeepCollectionEquality()
                    .equals(other.firstScan, firstScan)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstScan);

  @JsonKey(ignore: true)
  @override
  _$ScanningCopyWith<_Scanning> get copyWith =>
      __$ScanningCopyWithImpl<_Scanning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstScan) scanning,
    required TResult Function() finished,
    required TResult Function() error,
  }) {
    return scanning(firstScan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstScan)? scanning,
    TResult Function()? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (scanning != null) {
      return scanning(firstScan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return scanning(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (scanning != null) {
      return scanning(this);
    }
    return orElse();
  }
}

abstract class _Scanning implements FaceScanState {
  const factory _Scanning({required bool firstScan}) = _$_Scanning;

  bool get firstScan => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ScanningCopyWith<_Scanning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishedCopyWith<$Res> {
  factory _$FinishedCopyWith(_Finished value, $Res Function(_Finished) then) =
      __$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FinishedCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements _$FinishedCopyWith<$Res> {
  __$FinishedCopyWithImpl(_Finished _value, $Res Function(_Finished) _then)
      : super(_value, (v) => _then(v as _Finished));

  @override
  _Finished get _value => super._value as _Finished;
}

/// @nodoc

class _$_Finished implements _Finished {
  const _$_Finished();

  @override
  String toString() {
    return 'FaceScanState.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstScan) scanning,
    required TResult Function() finished,
    required TResult Function() error,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstScan)? scanning,
    TResult Function()? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements FaceScanState {
  const factory _Finished() = _$_Finished;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'FaceScanState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool firstScan) scanning,
    required TResult Function() finished,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool firstScan)? scanning,
    TResult Function()? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FaceScanState {
  const factory _Error() = _$_Error;
}
