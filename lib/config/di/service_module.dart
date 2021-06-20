import 'package:face_scaner/data/face_scan/face_scan_service_dummy.dart';
import 'package:face_scaner/data/services_impl/default_orientation_service.dart';
import 'package:face_scaner/domain/face_scan/face_scan_service.dart';
import 'package:face_scaner/domain/orientation_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceModule {
  @Injectable(as: FaceScanService)
  FaceScanServiceDummy get faceScanBloc;

  @Injectable(as: OrientationService)
  DefaultOrientationService get defaultOrientationService;
}
