import 'package:face_scaner/ui/face_scan/face_scan_bloc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BlocModule {
  @injectable
  FaceScanBloc get faceScanBloc;
}
