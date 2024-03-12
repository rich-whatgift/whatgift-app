import '/auth/supabase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/lists/list/list_widget.dart';
import '/lists/list_create_new/list_create_new_widget.dart';
import '/nav/header_logged_in/header_logged_in_widget.dart';
import 'dart:async';
import 'my_wishlists_widget.dart' show MyWishlistsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyWishlistsModel extends FlutterFlowModel<MyWishlistsWidget> {
  ///  Local state fields for this page.

  DocumentReference? whichListToShow;

  bool showCreateNewList = false;

  ListsRecord? whichDocToShow;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderLoggedIn component.
  late HeaderLoggedInModel headerLoggedInModel;
  // State field(s) for RowLists widget.
  ScrollController? rowLists;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Model for listCreateNew component.
  late ListCreateNewModel listCreateNewModel;
  // Model for list component.
  late ListModel listModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerLoggedInModel = createModel(context, () => HeaderLoggedInModel());
    rowLists = ScrollController();
    columnController = ScrollController();
    listViewController = ScrollController();
    listCreateNewModel = createModel(context, () => ListCreateNewModel());
    listModel = createModel(context, () => ListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerLoggedInModel.dispose();
    rowLists?.dispose();
    columnController?.dispose();
    listViewController?.dispose();
    listCreateNewModel.dispose();
    listModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
