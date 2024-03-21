import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/nav/header_logo/header_logo_widget.dart';
import 'onboarding_step_two_widget.dart' show OnboardingStepTwoWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class OnboardingStepTwoModel extends FlutterFlowModel<OnboardingStepTwoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for HeaderLogo component.
  late HeaderLogoModel headerLogoModel;
  // State field(s) for dob widget.
  FocusNode? dobFocusNode;
  TextEditingController? dobController;
  final dobMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dobControllerValidator;
  DateTime? datePicked;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for genderDropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
  // State field(s) for countryDropDown widget.
  String? countryDropDownValue;
  FormFieldController<String>? countryDropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerLogoModel = createModel(context, () => HeaderLogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerLogoModel.dispose();
    dobFocusNode?.dispose();
    dobController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
