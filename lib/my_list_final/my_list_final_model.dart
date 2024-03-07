import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_gift_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'my_list_final_widget.dart' show MyListFinalWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyListFinalModel extends FlutterFlowModel<MyListFinalWidget> {
  ///  Local state fields for this page.

  List<dynamic> allGiftItemList = [];
  void addToAllGiftItemList(dynamic item) => allGiftItemList.add(item);
  void removeFromAllGiftItemList(dynamic item) => allGiftItemList.remove(item);
  void removeAtIndexFromAllGiftItemList(int index) =>
      allGiftItemList.removeAt(index);
  void insertAtIndexInAllGiftItemList(int index, dynamic item) =>
      allGiftItemList.insert(index, item);
  void updateAllGiftItemListAtIndex(int index, Function(dynamic) updateFn) =>
      allGiftItemList[index] = updateFn(allGiftItemList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<ListGiftGuideRow>? rowDeleted;
  // Stores action output result for [Custom Action - getAllGiftsByListID] action in Icon widget.
  List<dynamic>? allGiftsByListID;
  // Model for EmptyGiftList component.
  late EmptyGiftListModel emptyGiftListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    emptyGiftListModel = createModel(context, () => EmptyGiftListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emptyGiftListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
