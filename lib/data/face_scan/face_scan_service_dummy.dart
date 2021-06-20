import 'package:face_scaner/domain/face_scan/face_scan_service.dart';

class FaceScanServiceDummy implements FaceScanService {
  @override
  Future<void> startScan() async {}

  @override
  Future<void> finishScan() async {}

  @override
  Stream<FacePosition> observeFacePosition() async* {
    yield* const Stream<FacePosition>.empty();
  }

  @override
  Future<void> getFacePosition() async {}
}

