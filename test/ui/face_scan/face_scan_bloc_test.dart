import 'package:bloc_test/bloc_test.dart';
import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  blocTest<FaceScanBloc, FaceScanState>(
    'emits nothing when nothing added',
    build: _build,
    expect: () => [],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'calls init on build',
    build: _build,
    verify: (bloc) => bloc.init(),
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
    'emits FaceScanState.scanning with firstScan value false when finishFirstScan method called on bloc '
    'and calls init method',
    build: _build,
    act: (bloc) => bloc.cancelScan(),
    expect: () => [
      FaceScanState.initial(containerStates: _getFilledList()),
    ],
    verify: (bloc) => bloc.init(),
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits FaceScanState.scanning with updated dx and dy when updateDrugCenter method called on bloc',
    build: _build,
    seed: () => initialScanningState,
    act: (bloc) => bloc.updateDrugCenter(10, 10),
    expect: () => [
      initialScanningState.copyWith(dy: 10, dx: 10),
    ],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits nothing when updateDrugCenter method called on bloc and current state is not Scanning',
    build: _build,
    act: (bloc) => bloc.updateDrugCenter(10, 10),
    expect: () => [],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits nothing when updateDragPosition method called on bloc and current state is not Scanning',
    build: _build,
    act: (bloc) => bloc.updateDragPosition(10, 10),
    expect: () => [],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits nothing when updateDragPosition method called on bloc and current state is not Scanning',
    build: _build,
    seed: () => initialScanningState,
    act: (bloc) => bloc.updateDragPosition(1, 0),
    expect: () => [isA<Scanning>(), isA<Scanning>()],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits nothing when updateDragPosition method called on bloc and current state is not Scanning',
    build: _build,
    wait: const Duration(milliseconds: 2300),
    expect: () => [isA<Initial>(), isA<Initial>()],
  );
}

final initialState = FaceScanState.initial(containerStates: _getFilledList());
final initialScanningState =
    FaceScanState.scanning(firstScan: true, containerStates: _getFilledList())
        as Scanning;

FaceScanBloc _build() => FaceScanBloc();

List<AnimatedContainerState> _getFilledList({
  AnimatedContainerState containerStates =
      AnimatedContainerState.verticalLineSmall,
  AnimatedContainerState? stateToReplace,
}) {
  final list =
      List.filled(numberOfAnimatedContainers, containerStates, growable: true);

  if (stateToReplace == null) return list;

  list.removeAt(0);
  list.add(stateToReplace);
  return list;
}
