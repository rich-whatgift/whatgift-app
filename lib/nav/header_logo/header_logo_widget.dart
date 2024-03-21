import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_logo_model.dart';
export 'header_logo_model.dart';

class HeaderLogoWidget extends StatefulWidget {
  const HeaderLogoWidget({
    super.key,
    this.purpleTheme,
    required this.whiteTheme,
    this.showSignIn,
    this.showMenuIcon,
    this.showCloseIcon,
    this.showBackIcon,
  });

  final bool? purpleTheme;
  final bool? whiteTheme;
  final bool? showSignIn;
  final bool? showMenuIcon;
  final bool? showCloseIcon;
  final bool? showBackIcon;

  @override
  State<HeaderLogoWidget> createState() => _HeaderLogoWidgetState();
}

class _HeaderLogoWidgetState extends State<HeaderLogoWidget> {
  late HeaderLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderLogoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 70.0,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          if (widget.showMenuIcon ?? true)
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (FFAppState().navSidebar) {
                    FFAppState().update(() {
                      FFAppState().navSidebar = false;
                    });
                  } else {
                    FFAppState().update(() {
                      FFAppState().navSidebar = true;
                    });
                  }
                },
                child: Container(
                  width: 70.0,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.menu_rounded,
                      color: colorFromCssString(
                        valueOrDefault<String>(
                          () {
                            if (widget.whiteTheme!) {
                              return '#FAFAFA';
                            } else if (widget.purpleTheme!) {
                              return '#8431B0';
                            } else {
                              return '#FAFAFA';
                            }
                          }(),
                          '#FAFAFA',
                        ),
                        defaultColor: FlutterFlowTheme.of(context).white,
                      ),
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          if (widget.showCloseIcon ?? true)
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (FFAppState().navSidebar) {
                    FFAppState().update(() {
                      FFAppState().navSidebar = false;
                    });
                  } else {
                    FFAppState().update(() {
                      FFAppState().navSidebar = true;
                    });
                  }
                },
                child: Container(
                  width: 70.0,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: colorFromCssString(
                        valueOrDefault<String>(
                          () {
                            if (widget.whiteTheme!) {
                              return '#FAFAFA';
                            } else if (widget.purpleTheme!) {
                              return '#8431B0';
                            } else {
                              return '#FAFAFA';
                            }
                          }(),
                          '#FAFAFA',
                        ),
                        defaultColor: FlutterFlowTheme.of(context).white,
                      ),
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          if (widget.showCloseIcon ?? true)
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Container(
                  width: 70.0,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: colorFromCssString(
                        valueOrDefault<String>(
                          () {
                            if (widget.whiteTheme!) {
                              return '#FAFAFA';
                            } else if (widget.purpleTheme!) {
                              return '#8431B0';
                            } else {
                              return '#FAFAFA';
                            }
                          }(),
                          '#FAFAFA',
                        ),
                        defaultColor: FlutterFlowTheme.of(context).white,
                      ),
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          if (widget.purpleTheme ?? true)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Home');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/whatgift_logo_v1_primary_purple_svg.svg',
                      width: 150.0,
                      height: 28.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          if (widget.whiteTheme ?? true)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Home');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/whatgift_logo_v1_white_svg.svg',
                      width: 150.0,
                      height: 28.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          if (widget.showSignIn ?? true)
            Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Signin');
                  },
                  text: 'Sign In',
                  options: FFButtonOptions(
                    height: 30.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 6.0, 16.0, 6.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).transparent,
                    textStyle: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                      height: 1.5,
                    ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).white,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                    hoverColor: Color(0xFFBBBBBB),
                    hoverBorderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    hoverTextColor: FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
