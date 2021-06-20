import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _instructionsStrings = [
  'How to Set Up Face ID.',
  'Move your head slowly to\ncomplete the circle.',
  'First Face ID\nscan complete.',
  'Move your head slowly to\ncomplete the circle',
  'Second Face ID\nscan complete.',
  'Face ID is now\nset up.',
  'Something is wrong\n start scan again.'
];
const _additionalInstructionsStrings = [
  'First, position your face in the camera\n frame. Then move your head in a circle to\n show all the angles of your face.'
];

class ScanInstructions extends StatefulWidget {
  const ScanInstructions({Key? key}) : super(key: key);

  @override
  _ScanInstructionsState createState() => _ScanInstructionsState();
}

class _ScanInstructionsState extends State<ScanInstructions> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FaceScanBloc, FaceScanState>(
      listener: (BuildContext context, FaceScanState state) {
        state.map(
            initial: (_) => moveToPage(0, animate: false),
            scanning: (state) {
              if (state.firstScan) {
                moveToPage(1);
              } else {
                if (state.containerStates
                    .contains(AnimatedContainerState.horizontalLine)) {
                  moveToPage(4);
                } else {
                  moveToPage(3);
                }
              }
            },
            finished: (state) {
              moveToPage(state.firstScan ? 2 : _instructionsStrings.length - 2);
            },
            error: (_) => moveToPage(_instructionsStrings.length - 1));
      },
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: _instructionsStrings.length,
        itemBuilder: (BuildContext context, int index) => Center(
          child: Column(
            children: [
              Text(
                _instructionsStrings[index],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              if (index == 0)
                Text(
                  _additionalInstructionsStrings[index],
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                )
              else
                Container()
            ],
          ),
        ),
      ),
    );
  }

  void moveToPage(int page, {bool animate = true}) {
    animate
        ? _pageController.animateToPage(page,
            duration: const Duration(milliseconds: 500), curve: Curves.ease)
        : _pageController.jumpToPage(page);
  }
}
