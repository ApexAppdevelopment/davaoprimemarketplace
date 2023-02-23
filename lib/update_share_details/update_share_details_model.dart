import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateShareDetailsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for accountnumber widget.
  TextEditingController? accountnumberController;
  String? Function(BuildContext, String?)? accountnumberControllerValidator;
  // State field(s) for NotetoAdmin widget.
  TextEditingController? notetoAdminController;
  String? Function(BuildContext, String?)? notetoAdminControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourNameController?.dispose();
    accountnumberController?.dispose();
    notetoAdminController?.dispose();
  }

  /// Additional helper methods are added here.

}
