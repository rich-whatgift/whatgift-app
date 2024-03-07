import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'email_sign_up_model.dart';
export 'email_sign_up_model.dart';

class EmailSignUpWidget extends StatefulWidget {
  const EmailSignUpWidget({
    super.key,
    this.email,
  });

  final String? email;

  @override
  State<EmailSignUpWidget> createState() => _EmailSignUpWidgetState();
}

class _EmailSignUpWidgetState extends State<EmailSignUpWidget> {
  late EmailSignUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailSignUpModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        constraints: BoxConstraints(
          maxWidth: 500.0,
        ),
        decoration: BoxDecoration(
          color: Color(0x28FAF7F7),
          borderRadius: BorderRadius.circular(26.0),
          border: Border.all(
            color: Color(0x2AFAF7F7),
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Enter email',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).whiteFaded,
                                fontWeight: FontWeight.normal,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                color: Color(0xFF804BDF),
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: FlutterFlowTheme.of(context).whiteFaded,
                        size: 20.0,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).white,
                        ),
                    keyboardType: TextInputType.emailAddress,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 4.0, 4.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Make a List',
                  options: FFButtonOptions(
                    height: 52.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 14.0, 24.0, 14.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).buttonPrimarySolid,
                    textStyle: GoogleFonts.getFont(
                      'Inter',
                      color: FlutterFlowTheme.of(context).primaryText,
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
            ),
          ],
        ),
      ),
    );
  }
}
