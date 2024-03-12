import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nav/side_navigation_component/side_navigation_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_sidebar_model.dart';
export 'nav_sidebar_model.dart';

class NavSidebarWidget extends StatefulWidget {
  const NavSidebarWidget({super.key});

  @override
  State<NavSidebarWidget> createState() => _NavSidebarWidgetState();
}

class _NavSidebarWidgetState extends State<NavSidebarWidget> {
  late NavSidebarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavSidebarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.sideNavigationComponentModel,
            updateCallback: () => setState(() {}),
            child: SideNavigationComponentWidget(),
          ),
        ),
      ),
    );
  }
}
