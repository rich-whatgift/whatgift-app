import '/components/profile_photo_upload/profile_photo_upload_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nav/header_logo/header_logo_widget.dart';
import 'onboarding_step_three_widget.dart' show OnboardingStepThreeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingStepThreeModel
    extends FlutterFlowModel<OnboardingStepThreeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderLogo component.
  late HeaderLogoModel headerLogoModel;
  // Model for ProfilePhotoUpload component.
  late ProfilePhotoUploadModel profilePhotoUploadModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerLogoModel = createModel(context, () => HeaderLogoModel());
    profilePhotoUploadModel =
        createModel(context, () => ProfilePhotoUploadModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerLogoModel.dispose();
    profilePhotoUploadModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
