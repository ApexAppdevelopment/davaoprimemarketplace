import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for sign_in_email widget.
  TextEditingController? signInEmailController;
  String? Function(BuildContext, String?)? signInEmailControllerValidator;
  // State field(s) for sign_in_pass widget.
  TextEditingController? signInPassController;
  late bool signInPassVisibility;
  String? Function(BuildContext, String?)? signInPassControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signInPassVisibility = false;
  }

  void dispose() {
    signInEmailController?.dispose();
    signInPassController?.dispose();
  }

  /// Additional helper methods are added here.

}
