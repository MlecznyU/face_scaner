import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:face_scaner/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FaceScanPage extends StatelessWidget {
  const FaceScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () =>
                              context.read<FaceScanBloc>().cancelScan(),
                          child: const Text('Cancel'),
                        ),
                      )),
                  const Spacer(flex: 2),
                  Container(
                    height: context.screenWidth() * 2 / 3,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Colors.greenAccent, width: 2)),
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white10,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'some text',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(flex: 2),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: SizedBox(
                      width: context.screenWidth(),
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () =>
                            context.read<FaceScanBloc>().startSecondScan(),
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
