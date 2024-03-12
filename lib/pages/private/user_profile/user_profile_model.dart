import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nav/side_navigation_component/side_navigation_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getUserAllList] action in UserProfile widget.
  List<dynamic>? allUserLists;
  // Stores action output result for [Backend Call - Insert Row] action in UserProfile widget.
  ListRow? createMyFirstList;
  // Stores action output result for [Custom Action - getUserAllList] action in UserProfile widget.
  List<dynamic>? allInitialUserLists;
  // Stores action output result for [Custom Action - fetchPaginatedItem] action in Button widget.
  List<dynamic>? fetchedInitialData;
  // Model for SideNavigationComponent component.
  late SideNavigationComponentModel sideNavigationComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavigationComponentModel =
        createModel(context, () => SideNavigationComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavigationComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
