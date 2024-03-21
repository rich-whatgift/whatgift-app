import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gift_list_model.dart';
export 'gift_list_model.dart';

class GiftListWidget extends StatefulWidget {
  const GiftListWidget({
    super.key,
    required this.docRef,
    required this.doc,
  });

  final DocumentReference? docRef;
  final ListsRecord? doc;

  @override
  State<GiftListWidget> createState() => _GiftListWidgetState();
}

class _GiftListWidgetState extends State<GiftListWidget> {
  late GiftListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GiftListModel());
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
          color: FlutterFlowTheme.of(context).secondaryBackground,
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
                  valueOrDefault<String>(
                    widget.doc?.title,
                    'title',
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.doc?.description,
                    'description',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      curve: Curves.easeInOut,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered1!
                            ? FlutterFlowTheme.of(context).primaryBackground
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 70.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.settings_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40.0),
                                    child: Image.network(
                                      'https://source.unsplash.com/a-hand-holding-a-gift-box--fcgVjWlN5k/100x100',
                                      width: 55.0,
                                      height: 55.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gift Name',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        '£25 from Amazon',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    onEnter: ((event) async {
                      setState(() => _model.mouseRegionHovered1 = true);
                    }),
                    onExit: ((event) async {
                      setState(() => _model.mouseRegionHovered1 = false);
                    }),
                  ),
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      curve: Curves.easeInOut,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: _model.mouseRegionHovered2!
                            ? FlutterFlowTheme.of(context).primaryBackground
                            : FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 70.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.settings_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40.0),
                                    child: Image.network(
                                      'https://source.unsplash.com/a-hand-holding-a-gift-box--fcgVjWlN5k/100x100',
                                      width: 55.0,
                                      height: 55.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gift Name',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        '£25 from Amazon',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    onEnter: ((event) async {
                      setState(() => _model.mouseRegionHovered2 = true);
                    }),
                    onExit: ((event) async {
                      setState(() => _model.mouseRegionHovered2 = false);
                    }),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).info,
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: Text(
                                'Add Gift',
                                maxLines: 2,
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: Color(0x588431B0),
                                    ),
                              ),
                            ),
                          ),
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
