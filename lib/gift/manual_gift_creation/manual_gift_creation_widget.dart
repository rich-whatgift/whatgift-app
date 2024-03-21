import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manual_gift_creation_model.dart';
export 'manual_gift_creation_model.dart';

class ManualGiftCreationWidget extends StatefulWidget {
  const ManualGiftCreationWidget({
    super.key,
    required this.listRow,
  });

  final dynamic listRow;

  @override
  State<ManualGiftCreationWidget> createState() =>
      _ManualGiftCreationWidgetState();
}

class _ManualGiftCreationWidgetState extends State<ManualGiftCreationWidget> {
  late ManualGiftCreationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManualGiftCreationModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();
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
        width: 350.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 72.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryText,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      'Add Gift',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                _model.uploadedFileUrl,
                                'https://cdn.dribbble.com/users/7056161/screenshots/15861318/gift_4x.jpg',
                              ),
                              width: 166.0,
                              height: 166.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (_model.uploadedFileUrl == null ||
                            _model.uploadedFileUrl == '')
                          Align(
                            alignment: AlignmentDirectional(0.89, 0.6),
                            child: Text(
                              '*required',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 12.0,
                                  ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      final selectedMedia =
                          await selectMediaWithSourceBottomSheet(
                        context: context,
                        storageFolderPath: 'UserGiftImage',
                        allowPhoto: true,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];

                        var downloadUrls = <String>[];
                        try {
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();

                          downloadUrls = await uploadSupabaseStorageFiles(
                            bucketName: 'files',
                            selectedFiles: selectedMedia,
                          );
                        } finally {
                          _model.isDataUploading = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedMedia.length &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl = downloadUrls.first;
                          });
                        } else {
                          setState(() {});
                          return;
                        }
                      }
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FFIcons.kgallery,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 16.0,
                        ),
                        Text(
                          'Upload Image',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Gift Title',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Enter Gift Tttile',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Price',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).textFieldBorder,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??= 'GBP',
                                ),
                                options: ['GBP'],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue = val),
                                width: 100.0,
                                height: 40.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                hintText: 'Please select...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: Color(0xFFF5F5F5),
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 2.0,
                                borderRadius: 32.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 0.0, 4.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: _model.textController2,
                                focusNode: _model.textFieldFocusNode2,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintText: 'Enter Price',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Container(
                        width: 120.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                        ),
                        child: FlutterFlowCountController(
                          decrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.minus,
                            color: enabled
                                ? FlutterFlowTheme.of(context).secondaryText
                                : FlutterFlowTheme.of(context).alternate,
                            size: 12.0,
                          ),
                          incrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.plus,
                            color: enabled
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).alternate,
                            size: 12.0,
                          ),
                          countBuilder: (count) => Text(
                            count.toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Manrope',
                                  fontSize: 12.0,
                                ),
                          ),
                          count: _model.countControllerValue ??= 1,
                          updateCount: (count) => setState(
                              () => _model.countControllerValue = count),
                          stepSize: 1,
                          maximum: 99,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'URL',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController3,
                        focusNode: _model.textFieldFocusNode3,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Enter Gift URL',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Category',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController4,
                        focusNode: _model.textFieldFocusNode4,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Enter Category',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.textController4Validator
                            .asValidator(context),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Notes',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController5,
                        focusNode: _model.textFieldFocusNode5,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintText: 'Write a note',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  FlutterFlowTheme.of(context).textFieldBorder,
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        maxLines: 7,
                        validator: _model.textController5Validator
                            .asValidator(context),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 152.0,
                          height: 46.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Manrope',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          if (_model.uploadedFileUrl == null ||
                              _model.uploadedFileUrl.isEmpty) {
                            return;
                          }
                          _model.insertedGift = await GiftGuideTable().insert({
                            'title': _model.textController1.text,
                            'image_url': _model.uploadedFileUrl,
                            'price':
                                double.tryParse(_model.textController2.text),
                            'currency': _model.dropDownValue,
                            'category': _model.textController4.text,
                            'created_by': currentUserUid,
                          });
                          _model.insertedSuccess =
                              await ListGiftGuideTable().insert({
                            'list_id': getJsonField(
                              widget.listRow,
                              r'''$.id''',
                            ),
                            'gift_guide_id': _model.insertedGift?.id,
                            'user_id': currentUserUid,
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Gift Added Successfully',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              duration: Duration(milliseconds: 2000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );
                          Navigator.pop(context);

                          context.goNamed(
                            'MyListFinal',
                            queryParameters: {
                              'listRow': serializeParam(
                                widget.listRow,
                                ParamType.JSON,
                              ),
                            }.withoutNulls,
                          );

                          setState(() {});
                        },
                        text: 'Add to My List',
                        options: FFButtonOptions(
                          width: 152.0,
                          height: 46.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                ]
                    .divide(SizedBox(height: 12.0))
                    .addToEnd(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
