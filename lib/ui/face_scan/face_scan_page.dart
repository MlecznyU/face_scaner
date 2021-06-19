import 'dart:math';

import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:face_scaner/ui/face_scan/face_scan_components/scan_instructions.dart';
import 'package:face_scaner/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vector_math/vector_math.dart' show radians;

class FaceScanPage extends StatelessWidget {
  const FaceScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listOfWidgets = <Widget>[];

    for (int i = 0; i < 360 / 5; i++) {
      listOfWidgets.add(NewWidget(angle: i * 5));
    }

    return BlocProvider<FaceScanBloc>(
      // TODO: changed to getIt
      create: (_) => FaceScanBloc(),
      child: Builder(
        builder: (BuildContext context) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Column(
                children: [
                  const _FaceScanAppBar(),
                  const Spacer(flex: 2),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ...listOfWidgets,
                      Container(
                        height: context.screenWidth() * 2 / 3,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.transparent, width: 2)),
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white10,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Expanded(child: ScanInstructions()),
                  const Spacer(flex: 2),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: SizedBox(
                      width: context.screenWidth(),
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<FaceScanBloc>().startSecondScan();
                        },
                        child: const Text('Continue'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _FaceScanAppBar extends StatelessWidget {
  const _FaceScanAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaceScanBloc, FaceScanState>(
      builder: (BuildContext context, FaceScanState state) {
        return state.maybeMap(
            orElse: () => Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () =>
                          context.read<FaceScanBloc>().cancelScan(),
                      child: const Text('Cancel'),
                    ),
                  ),
                )),
            initial: (_) => const SizedBox(height: 50));
      },
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({Key? key, required this.angle}) : super(key: key);

  final double angle;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(context.screenWidth() * 1 / 3 * cos(radians(angle)),
          context.screenWidth() * 1 / 3 * sin(radians(angle))),
      child: Transform.rotate(
          angle: radians(angle - 90),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: 20,
              width: 2,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
          )),
    );
  }
}
