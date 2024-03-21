import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_detail_model.dart';
export 'event_detail_model.dart';

class EventDetailWidget extends StatefulWidget {
  const EventDetailWidget({super.key});

  @override
  State<EventDetailWidget> createState() => _EventDetailWidgetState();
}

class _EventDetailWidgetState extends State<EventDetailWidget>
    with TickerProviderStateMixin {
  late EventDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 140.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(-0.349, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventDetailModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.close_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 570.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 48.0,
                        color: Color(0x0D000000),
                        offset: Offset(0.0, 0.0),
                        spreadRadius: 0.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 170.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).accent3
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(-1.0, 0.0),
                                  end: AlignmentDirectional(1.0, 0),
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBorder,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Container(
                                        width: 56.0,
                                        height: 56.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          FFIcons.kgift,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Randy Birthday!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          size: 24.0,
                                        ),
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Dec 3, 2023  • ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent4,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: 'in 7 days',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent4,
                                                ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 4.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Date',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                              ),
                              Text(
                                '30/06/1986',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color:
                                          FlutterFlowTheme.of(context).textBody,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Interval',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                              ),
                              Text(
                                'Weekly',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color:
                                          FlutterFlowTheme.of(context).textBody,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                              ),
                              Text(
                                'Donec volutpat ultrices mauris quis volutpat non sit porttitor. Sed malesuada rhoncus fermentum eget facilisi.',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color:
                                          FlutterFlowTheme.of(context).textBody,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Number of gift',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                              ),
                              Text(
                                '4',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color:
                                          FlutterFlowTheme.of(context).textBody,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Show Event',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                              ),
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue ??= true,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => _model.checkboxValue = newValue!);
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Link to',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'View List',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 14.0, 24.0, 14.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .buttonPrimarySolid,
                                  textStyle: GoogleFonts.getFont(
                                    'Inter',
                                    color: Color(0xFF5A2178),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
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
                            ],
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 32.0,
                    borderWidth: 1.0,
                    buttonSize: 64.0,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    icon: Icon(
                      Icons.edit_rounded,
                      color: Color(0xFF5A2178),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 32.0,
                    borderWidth: 1.0,
                    buttonSize: 64.0,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    icon: Icon(
                      Icons.delete,
                      color: Color(0xFF5A2178),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ]
                .addToStart(SizedBox(height: 12.0))
                .addToEnd(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
