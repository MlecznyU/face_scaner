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
            initial: (_) => moveToPage(0),
            scanning: (_) => moveToPage((_pageController.page! + 1).toInt()),
            finished: (_) => moveToPage(_instructionsStrings.length - 1),
            error: (_) => moveToPage(_instructionsStrings.length));
      },
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: _instructionsStrings.length,
        itemBuilder: (BuildContext context, int index) => Center(
          child: Text(
            _instructionsStrings[index],
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  void moveToPage(int page) => _pageController.animateToPage(page,
      duration: const Duration(milliseconds: 500), curve: Curves.ease);
}
