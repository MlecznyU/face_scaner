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

  Initial initial({required List<AnimatedContainerState> containerStates}) {
    return Initial(
      containerStates: containerStates,
    );
  }

  Scanning scanning(
      {required bool firstScan,
      required List<AnimatedContainerState> containerStates,
      double dx = 0,
      double dy = 0}) {
    return Scanning(
      firstScan: firstScan,
      containerStates: containerStates,
      dx: dx,
      dy: dy,
    );
  }

  Finished finished({required bool firstScan}) {
    return Finished(
      firstScan: firstScan,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $FaceScanState = _$FaceScanStateTearOff();

/// @nodoc
mixin _$FaceScanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AnimatedContainerState> containerStates)
        initial,
    required TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)
        scanning,
    required TResult Function(bool firstScan) finished,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AnimatedContainerState> containerStates)? initial,
    TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)?
        scanning,
    TResult Function(bool firstScan)? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Scanning value) scanning,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Scanning value)? scanning,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
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
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({List<AnimatedContainerState> containerStates});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? containerStates = freezed,
  }) {
    return _then(Initial(
      containerStates: containerStates == freezed
          ? _value.containerStates
          : containerStates // ignore: cast_nullable_to_non_nullable
              as List<AnimatedContainerState>,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({required this.containerStates});

  @override
  final List<AnimatedContainerState> containerStates;

  @override
  String toString() {
    return 'FaceScanState.initial(containerStates: $containerStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.containerStates, containerStates) ||
                const DeepCollectionEquality()
                    .equals(other.containerStates, containerStates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(containerStates);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AnimatedContainerState> containerStates)
        initial,
    required TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)
        scanning,
    required TResult Function(bool firstScan) finished,
    required TResult Function() error,
  }) {
    return initial(containerStates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AnimatedContainerState> containerStates)? initial,
    TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)?
        scanning,
    TResult Function(bool firstScan)? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(containerStates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Scanning value) scanning,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Scanning value)? scanning,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FaceScanState {
  const factory Initial(
      {required List<AnimatedContainerState> containerStates}) = _$Initial;

  List<AnimatedContainerState> get containerStates =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanningCopyWith<$Res> {
  factory $ScanningCopyWith(Scanning value, $Res Function(Scanning) then) =
      _$ScanningCopyWithImpl<$Res>;
  $Res call(
      {bool firstScan,
      List<AnimatedContainerState> containerStates,
      double dx,
      double dy});
}

/// @nodoc
class _$ScanningCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements $ScanningCopyWith<$Res> {
  _$ScanningCopyWithImpl(Scanning _value, $Res Function(Scanning) _then)
      : super(_value, (v) => _then(v as Scanning));

  @override
  Scanning get _value => super._value as Scanning;

  @override
  $Res call({
    Object? firstScan = freezed,
    Object? containerStates = freezed,
    Object? dx = freezed,
    Object? dy = freezed,
  }) {
    return _then(Scanning(
      firstScan: firstScan == freezed
          ? _value.firstScan
          : firstScan // ignore: cast_nullable_to_non_nullable
              as bool,
      containerStates: containerStates == freezed
          ? _value.containerStates
          : containerStates // ignore: cast_nullable_to_non_nullable
              as List<AnimatedContainerState>,
      dx: dx == freezed
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: dy == freezed
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$Scanning implements Scanning {
  const _$Scanning(
      {required this.firstScan,
      required this.containerStates,
      this.dx = 0,
      this.dy = 0});

  @override
  final bool firstScan;
  @override
  final List<AnimatedContainerState> containerStates;
  @JsonKey(defaultValue: 0)
  @override
  final double dx;
  @JsonKey(defaultValue: 0)
  @override
  final double dy;

  @override
  String toString() {
    return 'FaceScanState.scanning(firstScan: $firstScan, containerStates: $containerStates, dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Scanning &&
            (identical(other.firstScan, firstScan) ||
                const DeepCollectionEquality()
                    .equals(other.firstScan, firstScan)) &&
            (identical(other.containerStates, containerStates) ||
                const DeepCollectionEquality()
                    .equals(other.containerStates, containerStates)) &&
            (identical(other.dx, dx) ||
                const DeepCollectionEquality().equals(other.dx, dx)) &&
            (identical(other.dy, dy) ||
                const DeepCollectionEquality().equals(other.dy, dy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstScan) ^
      const DeepCollectionEquality().hash(containerStates) ^
      const DeepCollectionEquality().hash(dx) ^
      const DeepCollectionEquality().hash(dy);

  @JsonKey(ignore: true)
  @override
  $ScanningCopyWith<Scanning> get copyWith =>
      _$ScanningCopyWithImpl<Scanning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AnimatedContainerState> containerStates)
        initial,
    required TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)
        scanning,
    required TResult Function(bool firstScan) finished,
    required TResult Function() error,
  }) {
    return scanning(firstScan, containerStates, dx, dy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AnimatedContainerState> containerStates)? initial,
    TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)?
        scanning,
    TResult Function(bool firstScan)? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (scanning != null) {
      return scanning(firstScan, containerStates, dx, dy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Scanning value) scanning,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return scanning(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Scanning value)? scanning,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (scanning != null) {
      return scanning(this);
    }
    return orElse();
  }
}

abstract class Scanning implements FaceScanState {
  const factory Scanning(
      {required bool firstScan,
      required List<AnimatedContainerState> containerStates,
      double dx,
      double dy}) = _$Scanning;

  bool get firstScan => throw _privateConstructorUsedError;
  List<AnimatedContainerState> get containerStates =>
      throw _privateConstructorUsedError;
  double get dx => throw _privateConstructorUsedError;
  double get dy => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanningCopyWith<Scanning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedCopyWith<$Res> {
  factory $FinishedCopyWith(Finished value, $Res Function(Finished) then) =
      _$FinishedCopyWithImpl<$Res>;
  $Res call({bool firstScan});
}

/// @nodoc
class _$FinishedCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements $FinishedCopyWith<$Res> {
  _$FinishedCopyWithImpl(Finished _value, $Res Function(Finished) _then)
      : super(_value, (v) => _then(v as Finished));

  @override
  Finished get _value => super._value as Finished;

  @override
  $Res call({
    Object? firstScan = freezed,
  }) {
    return _then(Finished(
      firstScan: firstScan == freezed
          ? _value.firstScan
          : firstScan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Finished implements Finished {
  const _$Finished({required this.firstScan});

  @override
  final bool firstScan;

  @override
  String toString() {
    return 'FaceScanState.finished(firstScan: $firstScan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Finished &&
            (identical(other.firstScan, firstScan) ||
                const DeepCollectionEquality()
                    .equals(other.firstScan, firstScan)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstScan);

  @JsonKey(ignore: true)
  @override
  $FinishedCopyWith<Finished> get copyWith =>
      _$FinishedCopyWithImpl<Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AnimatedContainerState> containerStates)
        initial,
    required TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)
        scanning,
    required TResult Function(bool firstScan) finished,
    required TResult Function() error,
  }) {
    return finished(firstScan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AnimatedContainerState> containerStates)? initial,
    TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)?
        scanning,
    TResult Function(bool firstScan)? finished,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(firstScan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Scanning value) scanning,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Scanning value)? scanning,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished implements FaceScanState {
  const factory Finished({required bool firstScan}) = _$Finished;

  bool get firstScan => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinishedCopyWith<Finished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$FaceScanStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'FaceScanState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AnimatedContainerState> containerStates)
        initial,
    required TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)
        scanning,
    required TResult Function(bool firstScan) finished,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AnimatedContainerState> containerStates)? initial,
    TResult Function(bool firstScan,
            List<AnimatedContainerState> containerStates, double dx, double dy)?
        scanning,
    TResult Function(bool firstScan)? finished,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Scanning value) scanning,
    required TResult Function(Finished value) finished,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Scanning value)? scanning,
    TResult Function(Finished value)? finished,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements FaceScanState {
  const factory Error() = _$Error;
}
