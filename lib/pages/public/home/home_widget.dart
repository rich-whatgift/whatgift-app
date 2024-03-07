import '/components/home/email_sign_up/email_sign_up_widget.dart';
import '/components/nav/header_logo/header_logo_widget.dart';
import '/components/nav/side_navigation_component/side_navigation_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.headerLogoModel,
                    updateCallback: () => setState(() {}),
                    child: HeaderLogoWidget(
                      purpleTheme: false,
                      whiteTheme: true,
                      showSignIn: true,
                      showMenuIcon: true,
                      showCloseIcon: false,
                      showBackIcon: false,
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).transparent,
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 74.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Find Gifts,',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                GradientText(
                                  'Create Lists',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.bold,
                                      ),
                                  colors: [
                                    FlutterFlowTheme.of(context).white,
                                    FlutterFlowTheme.of(context)
                                        .buttonPrimarySolid
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 40.0),
                                  child: Text(
                                    'The most personalised shopping experience there is.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: Color(0xA7FAFAFA),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: wrapWithModel(
                                    model: _model.emailSignUpModel,
                                    updateCallback: () => setState(() {}),
                                    child: EmailSignUpWidget(),
                                  ),
                                ),
                                Text(
                                  'Free forever!',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Manrope',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (FFAppState().navSidebar)
              Container(
                width: double.infinity,
                height: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 500.0,
                ),
                decoration: BoxDecoration(),
                child: wrapWithModel(
                  model: _model.sideNavigationComponentModel,
                  updateCallback: () => setState(() {}),
                  child: SideNavigationComponentWidget(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
