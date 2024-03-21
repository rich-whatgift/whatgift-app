import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_screen_model.dart';
export 'splash_screen_model.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  late SplashScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).alternate,
      body: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: Color(0xFFF8F5F0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/whatgift_logo_v1_primary_purple_svg.svg',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 20.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Signup');
                                },
                                text: 'Register',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 52.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 14.0, 24.0, 14.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .buttonPrimarySolid,
                                  textStyle: GoogleFonts.getFont(
                                    'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5,
                                  ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('Signin');
                                },
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 52.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 14.0, 24.0, 14.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .buttonPrimarySolid,
                                  textStyle: GoogleFonts.getFont(
                                    'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                    fontStyle: FontStyle.normal,
                                    height: 1.5,
                                  ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
