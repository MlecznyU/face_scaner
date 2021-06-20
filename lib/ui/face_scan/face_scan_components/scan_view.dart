import 'dart:math';

import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:face_scaner/utils/context_ext.dart';
import 'package:face_scaner/utils/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScanView extends StatelessWidget {
  ScanView({Key? key}) : super(key: key);

  final containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FaceScanBloc, FaceScanState>(
      listener: (BuildContext context, FaceScanState state) {
        if (state is Scanning && state.dx == 0) {
          if (containerKey.globalPaintBounds != null) {
            context.read<FaceScanBloc>().updateDrugCenter(
                containerKey.globalPaintBounds!.center.dx,
                containerKey.globalPaintBounds!.center.dy);
          }
        }
      },
      builder: (BuildContext context, FaceScanState state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            ..._mapStateToAnimatedContainers(state),
            GestureDetector(
              onHorizontalDragUpdate: (details) =>
                  onDragUpdate(state, details, context),
              onVerticalDragUpdate: (details) =>
                  onDragUpdate(state, details, context),
              child: Container(
                key: containerKey,
                height: context.circleRadius() * 2,
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Image.asset(
                        state is Scanning
                            ? 'assets/swipe.png'
                            : 'assets/face_id_face.png',
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void onDragUpdate(
      FaceScanState state, DragUpdateDetails details, BuildContext context) {
    if (state is Scanning &&
        state.containerStates
            .contains(AnimatedContainerState.verticalLineSmall)) {
      context.read<FaceScanBloc>().updateDragPosition(
          details.globalPosition.dx, details.globalPosition.dy);
    }
  }
}

List<Widget> _mapStateToAnimatedContainers(FaceScanState state) {
  final listOfWidgets = <Widget>[];
  state.maybeMap(
      orElse: () => {},
      initial: (state) {
        for (int i = 0; i < state.containerStates.length; i++) {
          listOfWidgets.add(_AnimatedContainer(
            key: Key(i.toString()),
            angle: (i * 5) - 90,
            containerState: state.containerStates[i],
          ));
        }
      },
      scanning: (state) {
        for (int i = 0; i < state.containerStates.length; i++) {
          listOfWidgets.add(_AnimatedContainer(
            key: Key(i.toString()),
            angle: (i * 5) - 90,
            containerState: state.containerStates[i],
          ));
        }
      },
      finished: (state) {
        if (state.firstScan) {
          for (int i = 0; i < numberOfAnimatedContainers; i++) {
            listOfWidgets.add(_AnimatedContainer(
              key: Key(i.toString()),
              angle: (i * 5) - 90,
              containerState: AnimatedContainerState.horizontalLine,
            ));
          }
        }
      });
  return listOfWidgets;
}

class _AnimatedContainer extends StatelessWidget {
  const _AnimatedContainer({
    Key? key,
    required this.angle,
    required this.containerState,
  }) : super(key: key);

  final double angle;
  final AnimatedContainerState containerState;

  @override
  Widget build(BuildContext context) {
    late double height;
    late double width;
    switch (containerState) {
      case AnimatedContainerState.horizontalLine:
        height = 2;
        width = 14;
        break;
      case AnimatedContainerState.dot:
        height = 2;
        width = 2;
        break;
      case AnimatedContainerState.verticalLineSmall:
        height = 10;
        width = 4;
        break;
      case AnimatedContainerState.verticalLaneLong:
        height = 20;
        width = 4;
        break;
    }

    return Transform.translate(
      offset: Offset(context.circleRadius() * cos(radians(angle)),
          context.circleRadius() * sin(radians(angle))),
      child: Transform.rotate(
          angle: radians(angle + 90),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: AnimatedContainer(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              duration: const Duration(milliseconds: 500),
            ),
          )),
    );
  }
}

extension on BuildContext {
  double circleRadius() => screenWidth() * 1 / 3;
}

extension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      return renderObject!.paintBounds
          .shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }
}
