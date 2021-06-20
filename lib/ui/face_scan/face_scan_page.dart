import 'package:face_scaner/config/di/di.dart';
import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:face_scaner/ui/face_scan/face_scan_components/scan_instructions.dart';
import 'package:face_scaner/ui/face_scan/face_scan_components/scan_view.dart';
import 'package:face_scaner/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FaceScanPage extends StatelessWidget {
  const FaceScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FaceScanBloc>(
      create: (_) => inject<FaceScanBloc>(),
      child: Builder(
        builder: (BuildContext context) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Column(
                children: [
                  const _FaceScanAppBar(),
                  const Spacer(flex: 2),
                  ScanView(),
                  const Spacer(),
                  const Expanded(flex: 2, child: ScanInstructions()),
                  const _BottomButton(),
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
  const _FaceScanAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaceScanBloc, FaceScanState>(
      builder: (BuildContext context, FaceScanState state) {
        return state.maybeMap(
            orElse: () => const _CancelButton(),
            finished: (state) {
              return state.firstScan
                  ? const _CancelButton()
                  : const SizedBox(height: 50);
            },
            initial: (_) => const SizedBox(height: 50));
      },
    );
  }
}

class _CancelButton extends StatelessWidget {
  const _CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => context.read<FaceScanBloc>().cancelScan(),
              child: const Text('Cancel'),
            ),
          ),
        ));
  }
}

class _BottomButton extends StatelessWidget {
  const _BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: SizedBox(
        width: context.screenWidth(),
        height: 40,
        child: BlocBuilder<FaceScanBloc, FaceScanState>(
          builder: (BuildContext context, FaceScanState state) {
            final bloc = context.read<FaceScanBloc>();
            return state.map(
                initial: (_) => ElevatedButton(
                      onPressed: () => bloc.startScan(),
                      child: const Text('Continue'),
                    ),
                scanning: (_) => Container(),
                finished: (state) {
                  return ElevatedButton(
                    onPressed: () => state.firstScan
                        ? bloc.startScan(firstScan: false)
                        : bloc.cancelScan(),
                    child: Text(state.firstScan ? 'Continue' : 'Done'),
                  );
                },
                error: (_) => ElevatedButton(
                      onPressed: () => bloc.startScan(),
                      child: const Text('Try again'),
                    ));
          },
        ),
      ),
    );
  }
}
