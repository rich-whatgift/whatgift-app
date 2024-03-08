import '/backend/backend.dart';
import '/components/nav/header_logo/header_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'onboarding_step2_model.dart';
export 'onboarding_step2_model.dart';

class OnboardingStep2Widget extends StatefulWidget {
  const OnboardingStep2Widget({super.key});

  @override
  State<OnboardingStep2Widget> createState() => _OnboardingStep2WidgetState();
}

class _OnboardingStep2WidgetState extends State<OnboardingStep2Widget>
    with TickerProviderStateMixin {
  late OnboardingStep2Model _model;

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
    _model = createModel(context, () => OnboardingStep2Model());

    _model.dobremoveController ??= TextEditingController();
    _model.dobremoveFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.dobremoveController?.text = '?? tbc';
        }));
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
        body: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  wrapWithModel(
                    model: _model.headerLogoModel,
                    updateCallback: () => setState(() {}),
                    child: HeaderLogoWidget(
                      purpleTheme: true,
                      whiteTheme: false,
                      showSignIn: false,
                      showMenuIcon: false,
                      showCloseIcon: false,
                      showBackIcon: true,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 570.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Nearly there',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 24.0),
                                          child: Text(
                                            'Show people who you are',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 24.0),
                                          child: Text(
                                            'The following is required for you to get the most out of what.gift and help you find the best gifts possible.',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            'Date of Birth',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: TextFormField(
                                          controller:
                                              _model.dobremoveController,
                                          focusNode: _model.dobremoveFocusNode,
                                          autofillHints: [
                                            AutofillHints.birthday
                                          ],
                                          textCapitalization:
                                              TextCapitalization.none,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Manrope',
                                                      color: Color(0xFFA3A3A3),
                                                    ),
                                            alignLabelWithHint: false,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFE5E5E5),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFFAFAFA),
                                            contentPadding:
                                                EdgeInsets.all(16.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLines: null,
                                          keyboardType: TextInputType.datetime,
                                          validator: _model
                                              .dobremoveControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model.dobremoveMask
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final _datePickedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: getCurrentTimestamp,
                                              firstDate: DateTime(1900),
                                              lastDate: getCurrentTimestamp,
                                            );

                                            if (_datePickedDate != null) {
                                              safeSetState(() {
                                                _model.datePicked = DateTime(
                                                  _datePickedDate.year,
                                                  _datePickedDate.month,
                                                  _datePickedDate.day,
                                                );
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textFieldBorder,
                                              ),
                                            ),
                                            child: MouseRegion(
                                              opaque: false,
                                              cursor: MouseCursor.defer ??
                                                  MouseCursor.defer,
                                              child: Stack(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.date_range,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        _model.datePicked!
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              onEnter: ((event) async {
                                                setState(() => _model
                                                    .mouseRegionHovered = true);
                                              }),
                                              onExit: ((event) async {
                                                setState(() =>
                                                    _model.mouseRegionHovered =
                                                        false);
                                              }),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            'Gender',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .genderDropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options: ['Male', 'Female', 'Other'],
                                          onChanged: (val) => setState(() =>
                                              _model.genderDropDownValue = val),
                                          width: double.infinity,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Please select...',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Color(0xFFE5E5E5),
                                          borderWidth: 1.0,
                                          borderRadius: 24.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            'Country',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: FutureBuilder<
                                            List<CountriesRecord>>(
                                          future: FFAppState().countriesQuery(
                                            requestFn: () =>
                                                queryCountriesRecordOnce(
                                              queryBuilder: (countriesRecord) =>
                                                  countriesRecord
                                                      .orderBy('name'),
                                            ),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      Color(0xFF8431B0),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<CountriesRecord>
                                                countryDropDownCountriesRecordList =
                                                snapshot.data!;
                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .countryDropDownValueController ??=
                                                  FormFieldController<String>(
                                                _model.countryDropDownValue ??=
                                                    'United Kingdom',
                                              ),
                                              options:
                                                  countryDropDownCountriesRecordList
                                                      .map((e) =>
                                                          valueOrDefault<
                                                              String>(
                                                            e.name,
                                                            'no country found',
                                                          ))
                                                      .toList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.countryDropDownValue =
                                                      val),
                                              width: double.infinity,
                                              height: 50.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: 'Please select...',
                                              searchHintText:
                                                  'Search for an item...',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: Color(0xFFE5E5E5),
                                              borderWidth: 1.0,
                                              borderRadius: 24.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            'Where you are living is best for gift recommrecommendations ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 24.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.datePicked != null) &&
                                            (_model.genderDropDownValue !=
                                                    null &&
                                                _model.genderDropDownValue !=
                                                    '') &&
                                            (_model.countryDropDownValue !=
                                                    null &&
                                                _model.countryDropDownValue !=
                                                    ''))
                                        ? null
                                        : () {
                                            print('Button pressed ...');
                                          },
                                    text: 'Next',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 52.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 14.0, 24.0, 14.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
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
                                      disabledColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
