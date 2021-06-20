import 'package:bloc_test/bloc_test.dart';
import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';

void main() {
  blocTest<FaceScanBloc, FaceScanState>(
    'emits nothing when nothing added',
    build: _build,
    expect: () => [],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits FaceScanState.scanning when startScan method called on bloc',
    build: _build,
    act: (bloc) => bloc.startScan(),
    expect: () => [
      FaceScanState.scanning(
          firstScan: true, containerStates: _getFilledList()),
    ],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits FaceScanState.scanning with firstScan value false when finishFirstScan method called on bloc',
    build: _build,
    act: (bloc) => bloc.startScan(firstScan: false),
    expect: () => [
      FaceScanState.scanning(
          firstScan: false, containerStates: _getFilledList()),
    ],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits FaceScanState.scanning with firstScan value false when finishFirstScan method called on bloc',
    build: _build,
    act: (bloc) => bloc.cancelScan(),
    expect: () => [
       FaceScanState.initial(containerStates: _getFilledList()),
    ],
  );
}

FaceScanBloc _build() => FaceScanBloc();

List<AnimatedContainerState> _getFilledList(
        {AnimatedContainerState containerState =
            AnimatedContainerState.verticalLineSmall}) =>
    List.filled(numberOfAnimatedContainers, containerState, growable: true);
