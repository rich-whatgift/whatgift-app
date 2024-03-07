import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_gift_to_list_widget.dart' show AddGiftToListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddGiftToListModel extends FlutterFlowModel<AddGiftToListWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Insert Row] action in Row widget.
  ListGiftGuideRow? insertedSuccessCopy;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ListGiftGuideRow? insertedSuccess;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
