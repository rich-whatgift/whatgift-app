import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_gift_to_list_model.dart';
export 'add_gift_to_list_model.dart';

class AddGiftToListWidget extends StatefulWidget {
  const AddGiftToListWidget({
    super.key,
    required this.giftID,
  });

  final int? giftID;

  @override
  State<AddGiftToListWidget> createState() => _AddGiftToListWidgetState();
}

class _AddGiftToListWidgetState extends State<AddGiftToListWidget> {
  late AddGiftToListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddGiftToListModel());
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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 28.0, 0.0),
                    child: Text(
                      'Add to:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final allMyList = FFAppState().AllMyLists.toList();
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: allMyList.length,
                      separatorBuilder: (_, __) => SizedBox(height: 12.0),
                      itemBuilder: (context, allMyListIndex) {
                        final allMyListItem = allMyList[allMyListIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.insertedSuccessCopy =
                                    await ListGiftGuideTable().insert({
                                  'list_id': getJsonField(
                                    allMyListItem,
                                    r'''$.id''',
                                  ),
                                  'gift_guide_id': widget.giftID,
                                  'user_id': currentUserUid,
                                });
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Gift Added'),
                                      content: Text(
                                          'Gift has been added to ${getJsonField(
                                        allMyListItem,
                                        r'''$.title''',
                                      ).toString()}'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                Navigator.pop(context);

                                setState(() {});
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kgift,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        _model.insertedSuccess =
                                            await ListGiftGuideTable().insert({
                                          'list_id': getJsonField(
                                            allMyListItem,
                                            r'''$.id''',
                                          ),
                                          'gift_guide_id': widget.giftID,
                                          'user_id': currentUserUid,
                                        });
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Gift Added'),
                                              content: Text(
                                                  'Gift has been added to ${getJsonField(
                                                allMyListItem,
                                                r'''$.title''',
                                              ).toString()}'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        Navigator.pop(context);

                                        setState(() {});
                                      },
                                      text: valueOrDefault<String>(
                                        getJsonField(
                                          allMyListItem,
                                          r'''$.title''',
                                        )?.toString(),
                                        'my list',
                                      ),
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                            Divider(
                              height: 24.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ].divide(SizedBox(height: 16.0)).addToStart(SizedBox(height: 12.0)),
      ),
    );
  }
}
