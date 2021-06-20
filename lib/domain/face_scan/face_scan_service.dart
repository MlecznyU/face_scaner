abstract class FaceScanService {
  Future<void> startScan();

  Future<void> finishScan();

  Stream<FacePosition> observeFacePosition();

  Future<void> getFacePosition();
}

enum FacePosition {
  up,
  left,
  right,
  down,
  direct,
  rightUp,
  rightDown,
  leftUp,
  leftDown,
}
