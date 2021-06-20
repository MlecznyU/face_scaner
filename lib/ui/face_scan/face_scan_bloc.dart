import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vector_math/vector_math.dart';

part 'face_scan_bloc.freezed.dart';

enum AnimatedContainerState {
  horizontalLine,
  dot,
  verticalLineSmall,
  verticalLaneLong
}

@freezed
class FaceScanState with _$FaceScanState {
  const factory FaceScanState.initial({
    required List<AnimatedContainerState> containerStates,
  }) = Initial;

  const factory FaceScanState.scanning({
    required bool firstScan,
    required List<AnimatedContainerState> containerStates,
    @Default(0) double dx,
    @Default(0) double dy,
  }) = Scanning;

  const factory FaceScanState.finished({
    required bool firstScan,
  }) = Finished;

  const factory FaceScanState.error() = Error;
}

class FaceScanBloc extends Cubit<FaceScanState> {
  FaceScanBloc()
      : super(FaceScanState.initial(containerStates: _getFilledList())) {
    init();
  }

  void init() {
    Future.delayed(const Duration(seconds: 2), () {
      Timer.periodic(const Duration(milliseconds: 150), (timer) {
        if (state is Initial) {
          final currentState = state as Initial;
          if (!currentState.containerStates
              .contains(AnimatedContainerState.verticalLineSmall)) {
            timer.cancel();
          }

          final newList = currentState.containerStates
            ..removeAt(0)
            ..add(AnimatedContainerState.verticalLaneLong);
          //bloc optimizes ui so that after emitting a few similar events,
          // blocBuilder stops listening
          emit(const FaceScanState.initial(containerStates: []));
          emit(currentState.copyWith.call(containerStates: newList));
        } else {
          timer.cancel();
        }
      });
    });
  }

  void startScan({bool firstScan = true}) {
    emit(FaceScanState.scanning(
        firstScan: firstScan, containerStates: _getFilledList()));
  }

  void cancelScan() {
    emit(FaceScanState.initial(containerStates: _getFilledList()));
    init();
  }

  void updateDrugCenter(double dx, double dy) {
    if (state is Scanning) emit((state as Scanning).copyWith(dx: dx, dy: dy));
  }

  Future<void> updateDragPosition(double dx, double dy) async {
    if (state is Scanning) {
      final currentState = state as Scanning;
      final corX = -1 * (currentState.dx - dx);
      final corY = currentState.dy - dy;
      late double angle;

      if (corY == 0 && corX > 0) {
        angle = 90;
      } else if (corY == 0 && corX < 0) {
        angle = 180;
      }
      final degree = degrees(atan(corX / corY));

      if (corX >= 0 && corY >= 0) {
        angle = degree;
      } else if (corX >= 0 && corY <= 0) {
        angle = 180 + degree;
      } else if (corX <= 0 && corY <= 0) {
        angle = degree + 180;
      } else {
        angle = 360 + degree;
      }
      final updatedList = currentState.containerStates;
      updatedList[(angle / 5 - 1).round()] =
          AnimatedContainerState.verticalLaneLong;
      startScan();
      emit(currentState.copyWith.call(containerStates: updatedList));

      await _shouldFinishScan();
    }
  }

  Future<void> _shouldFinishScan() async {
    final updatedState = state as Scanning;

    if (!updatedState.containerStates
        .contains(AnimatedContainerState.verticalLineSmall)) {
      emit(updatedState.copyWith(
          containerStates:
              _getFilledList(containerState: AnimatedContainerState.dot)));
      await Future.delayed(
          const Duration(milliseconds: 400),
          () => emit(FaceScanState.scanning(
              containerStates: _getFilledList(
                  containerState: AnimatedContainerState.horizontalLine),
              firstScan: updatedState.firstScan)));

      await Future.delayed(
          updatedState.firstScan
              ? const Duration(milliseconds: 400)
              : const Duration(seconds: 2),
          () =>
              emit(FaceScanState.finished(firstScan: updatedState.firstScan)));
      return;
    }
  }
}

const animatedContainerAngle = 5;
final numberOfAnimatedContainers = (360 / animatedContainerAngle).round();

List<AnimatedContainerState> _getFilledList(
        {AnimatedContainerState containerState =
            AnimatedContainerState.verticalLineSmall}) =>
    List.filled(numberOfAnimatedContainers, containerState, growable: true);
