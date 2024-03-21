import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_list_model.dart';
export 'new_list_model.dart';

class NewListWidget extends StatefulWidget {
  const NewListWidget({super.key});

  @override
  State<NewListWidget> createState() => _NewListWidgetState();
}

class _NewListWidgetState extends State<NewListWidget> {
  late NewListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewListModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 1.0,
        constraints: BoxConstraints(
          minWidth: 300.0,
          minHeight: 500.0,
          maxWidth: 500.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 12.0,
              color: Color(0x14000000),
              offset: Offset(0.0, 2.0),
              spreadRadius: 4.0,
            )
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Create New List',
                  style: FlutterFlowTheme.of(context).headlineMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: TextFormField(
                          controller: _model.textController1,
                          focusNode: _model.textFieldFocusNode1,
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'List title',
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFFA3A3A3),
                                ),
                            alignLabelWithHint: false,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE5E5E5),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFAFAFA),
                            contentPadding: EdgeInsets.all(16.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          maxLines: null,
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: TextFormField(
                          controller: _model.textController2,
                          focusNode: _model.textFieldFocusNode2,
                          textCapitalization: TextCapitalization.none,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'List description',
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: Color(0xFFA3A3A3),
                                ),
                            alignLabelWithHint: false,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFE5E5E5),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFAFAFA),
                            contentPadding: EdgeInsets.all(16.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          maxLines: null,
                          validator: _model.textController2Validator
                              .asValidator(context),
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.checkboxListTileValue = newValue!);
                          },
                          title: Text(
                            'Private',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Only you will be able to see this list',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {},
                          text: 'Create',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 52.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 14.0, 24.0, 14.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color:
                                FlutterFlowTheme.of(context).buttonPrimarySolid,
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
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
