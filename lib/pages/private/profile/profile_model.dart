import '/components/lists/badge_count/badge_count_widget.dart';
import '/components/nav/header_logo/header_logo_widget.dart';
import '/components/nav/side_navigation_component/side_navigation_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'profile_widget.dart' show ProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNavigationComponent component.
  late SideNavigationComponentModel sideNavigationComponentModel1;
  // Model for HeaderLogo component.
  late HeaderLogoModel headerLogoModel;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel1;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel2;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel3;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel4;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel5;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel6;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel7;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel8;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel9;
  // Model for badgeCount component.
  late BadgeCountModel badgeCountModel10;
  // Model for SideNavigationComponent component.
  late SideNavigationComponentModel sideNavigationComponentModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavigationComponentModel1 =
        createModel(context, () => SideNavigationComponentModel());
    headerLogoModel = createModel(context, () => HeaderLogoModel());
    badgeCountModel1 = createModel(context, () => BadgeCountModel());
    badgeCountModel2 = createModel(context, () => BadgeCountModel());
    badgeCountModel3 = createModel(context, () => BadgeCountModel());
    badgeCountModel4 = createModel(context, () => BadgeCountModel());
    badgeCountModel5 = createModel(context, () => BadgeCountModel());
    badgeCountModel6 = createModel(context, () => BadgeCountModel());
    badgeCountModel7 = createModel(context, () => BadgeCountModel());
    badgeCountModel8 = createModel(context, () => BadgeCountModel());
    badgeCountModel9 = createModel(context, () => BadgeCountModel());
    badgeCountModel10 = createModel(context, () => BadgeCountModel());
    sideNavigationComponentModel2 =
        createModel(context, () => SideNavigationComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavigationComponentModel1.dispose();
    headerLogoModel.dispose();
    badgeCountModel1.dispose();
    badgeCountModel2.dispose();
    badgeCountModel3.dispose();
    badgeCountModel4.dispose();
    badgeCountModel5.dispose();
    badgeCountModel6.dispose();
    badgeCountModel7.dispose();
    badgeCountModel8.dispose();
    badgeCountModel9.dispose();
    badgeCountModel10.dispose();
    sideNavigationComponentModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
