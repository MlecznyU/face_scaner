import 'package:bloc_test/bloc_test.dart';
import 'package:face_scaner/domain/face_scan/face_scan_service.dart';
import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'face_scan_bloc_test.mocks.dart';

late MockFaceScanService _mockFaceScanService;

@GenerateMocks([FaceScanService])
void main() {
  setUp(() {
    _mockFaceScanService = MockFaceScanService();
    when(_mockFaceScanService.startScan()).thenAnswer((_) => Future.value());
    when(_mockFaceScanService.finishScan()).thenAnswer((_) => Future.value());
    when(_mockFaceScanService.observeFacePosition())
        .thenAnswer((_) => const Stream.empty());
  });
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
    'emits two Scanning states when updateDragPosition method called on bloc and current state is Scanning',
    build: _build,
    seed: () => initialScanningState,
    act: (bloc) => bloc.updateDragPosition(1, 0),
    expect: () => [isA<Scanning>(), isA<Scanning>()],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits series of initial states after 2 seconds since bloc build',
    build: _build,
    wait: const Duration(milliseconds: 2300),
    expect: () => [isA<Initial>(), isA<Initial>()],
  );

  blocTest<FaceScanBloc, FaceScanState>(
      'calls startScan and observeFacePosition on FaceScanService when '
      'updateDragPosition method called on bloc',
      build: _build,
      act: (bloc) => bloc.startScan(),
      verify: (_) {
        _mockFaceScanService.startScan();
        _mockFaceScanService.observeFacePosition();
      });
}

final initialState = FaceScanState.initial(containerStates: _getFilledList());
final initialScanningState =
    FaceScanState.scanning(firstScan: true, containerStates: _getFilledList())
        as Scanning;

FaceScanBloc _build() => FaceScanBloc(_mockFaceScanService);

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
