import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  Local state fields for this page.

  bool isToggled = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EnterEmail widget.
  FocusNode? enterEmailFocusNode;
  TextEditingController? enterEmailController;
  String? Function(BuildContext, String?)? enterEmailControllerValidator;
  // State field(s) for EnterPassword widget.
  FocusNode? enterPasswordFocusNode;
  TextEditingController? enterPasswordController;
  late bool enterPasswordVisibility;
  String? Function(BuildContext, String?)? enterPasswordControllerValidator;
  // State field(s) for ReEnterPassword widget.
  FocusNode? reEnterPasswordFocusNode;
  TextEditingController? reEnterPasswordController;
  late bool reEnterPasswordVisibility;
  String? Function(BuildContext, String?)? reEnterPasswordControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UserRow? insertNewUserRow;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    enterPasswordVisibility = false;
    reEnterPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    enterEmailFocusNode?.dispose();
    enterEmailController?.dispose();

    enterPasswordFocusNode?.dispose();
    enterPasswordController?.dispose();

    reEnterPasswordFocusNode?.dispose();
    reEnterPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
