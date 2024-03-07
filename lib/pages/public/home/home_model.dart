import '/components/home/email_sign_up/email_sign_up_widget.dart';
import '/components/nav/header_logo/header_logo_widget.dart';
import '/components/nav/side_navigation_component/side_navigation_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderLogo component.
  late HeaderLogoModel headerLogoModel;
  // Model for emailSignUp component.
  late EmailSignUpModel emailSignUpModel;
  // Model for SideNavigationComponent component.
  late SideNavigationComponentModel sideNavigationComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerLogoModel = createModel(context, () => HeaderLogoModel());
    emailSignUpModel = createModel(context, () => EmailSignUpModel());
    sideNavigationComponentModel =
        createModel(context, () => SideNavigationComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerLogoModel.dispose();
    emailSignUpModel.dispose();
    sideNavigationComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
