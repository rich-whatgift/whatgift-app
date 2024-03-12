import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/nav/header_logo/header_logo_widget.dart';
import 'onboarding_step2_widget.dart' show OnboardingStep2Widget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class OnboardingStep2Model extends FlutterFlowModel<OnboardingStep2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for HeaderLogo component.
  late HeaderLogoModel headerLogoModel;
  // State field(s) for DOBREMOVE widget.
  FocusNode? dobremoveFocusNode;
  TextEditingController? dobremoveController;
  final dobremoveMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dobremoveControllerValidator;
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
    dobremoveFocusNode?.dispose();
    dobremoveController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
