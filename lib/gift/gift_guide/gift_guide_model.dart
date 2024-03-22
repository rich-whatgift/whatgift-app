import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_list_components/add_gift_to_list/add_gift_to_list_widget.dart';
import '/my_list_components/empty_gift_guide/empty_gift_guide_widget.dart';
import '/my_list_components/filter_list/filter_list_widget.dart';
import '/nav/side_navigation_component/side_navigation_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'gift_guide_widget.dart' show GiftGuideWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GiftGuideModel extends FlutterFlowModel<GiftGuideWidget> {
  ///  Local state fields for this page.

  String? category;

  bool isLoadedMore = true;

  bool isDataLoaded = false;

  int? pageNumCount = 1;

  List<dynamic> searchResultList = [];
  void addToSearchResultList(dynamic item) => searchResultList.add(item);
  void removeFromSearchResultList(dynamic item) =>
      searchResultList.remove(item);
  void removeAtIndexFromSearchResultList(int index) =>
      searchResultList.removeAt(index);
  void insertAtIndexInSearchResultList(int index, dynamic item) =>
      searchResultList.insert(index, item);
  void updateSearchResultListAtIndex(int index, Function(dynamic) updateFn) =>
      searchResultList[index] = updateFn(searchResultList[index]);

  List<dynamic> choiceChipResultList = [];
  void addToChoiceChipResultList(dynamic item) =>
      choiceChipResultList.add(item);
  void removeFromChoiceChipResultList(dynamic item) =>
      choiceChipResultList.remove(item);
  void removeAtIndexFromChoiceChipResultList(int index) =>
      choiceChipResultList.removeAt(index);
  void insertAtIndexInChoiceChipResultList(int index, dynamic item) =>
      choiceChipResultList.insert(index, item);
  void updateChoiceChipResultListAtIndex(
          int index, Function(dynamic) updateFn) =>
      choiceChipResultList[index] = updateFn(choiceChipResultList[index]);

  bool isFilterOn = false;

  String highlightLabel = 'Expert Review';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - fetchPaginatedItem] action in GiftGuide widget.
  List<dynamic>? paginatedData;
  // Stores action output result for [Backend Call - Query Rows] action in GiftGuide widget.
  List<ListRow>? myLists;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - searchTable] action in TextField widget.
  List<dynamic>? searchResult;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Custom Action - giftsQueryOnCategory] action in ChoiceChips widget.
  List<dynamic>? categorisedGifts;
  // State field(s) for Sorter widget.
  String? sorterValue;
  FormFieldController<String>? sorterValueController;
  // Stores action output result for [Custom Action - fetchPaginatedItem] action in Button widget.
  List<dynamic>? fetchResult;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    sideNavigationComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}