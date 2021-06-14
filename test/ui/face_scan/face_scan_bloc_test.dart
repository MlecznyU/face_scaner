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
      const FaceScanState.scanning(firstScan: true),
    ],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits FaceScanState.scanning with firstScan value false when finishFirstScan method called on bloc',
    build: _build,
    act: (bloc) => bloc.startSecondScan(),
    expect: () => [
      const FaceScanState.scanning(firstScan: false),
    ],
  );

  blocTest<FaceScanBloc, FaceScanState>(
    'emits FaceScanState.scanning with firstScan value false when finishFirstScan method called on bloc',
    build: _build,
    act: (bloc) => bloc.cancelScan(),
    expect: () => [
      const FaceScanState.initial(),
    ],
  );
}

FaceScanBloc _build() => FaceScanBloc();
