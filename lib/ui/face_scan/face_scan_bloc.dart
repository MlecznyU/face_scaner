import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_scan_bloc.freezed.dart';

@freezed
class FaceScanState with _$FaceScanState {
  const factory FaceScanState.initial() = _Initial;

  const factory FaceScanState.scanning({required bool firstScan}) = _Scanning;

  const factory FaceScanState.finished() = _Finished;

  const factory FaceScanState.error() = _Error;
}

class FaceScanBloc extends Cubit<FaceScanState> {
  FaceScanBloc() : super(const FaceScanState.initial());

  void startScan() {
    emit(const FaceScanState.scanning(firstScan: true));
  }

  void cancelScan() => emit(const FaceScanState.initial());

  void startSecondScan() {
    emit(const FaceScanState.scanning(firstScan: false));
  }
}
