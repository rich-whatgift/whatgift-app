import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_photo_upload_model.dart';
export 'profile_photo_upload_model.dart';

class ProfilePhotoUploadWidget extends StatefulWidget {
  const ProfilePhotoUploadWidget({super.key});

  @override
  State<ProfilePhotoUploadWidget> createState() =>
      _ProfilePhotoUploadWidgetState();
}

class _ProfilePhotoUploadWidgetState extends State<ProfilePhotoUploadWidget> {
  late ProfilePhotoUploadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePhotoUploadModel());
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
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 24.0),
              child: Container(
                width: 120.0,
                height: 120.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            '',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).divider,
                          width: 4.0,
                        ),
                      ),
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          _model.uploadedFileUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (_model.uploadedFileUrl == null ||
                        _model.uploadedFileUrl == '')
                      Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 36.0,
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: FFButtonWidget(
                onPressed: () async {
                  final selectedMedia = await selectMediaWithSourceBottomSheet(
                    context: context,
                    storageFolderPath: 'UserProfileImage',
                    maxWidth: 500.00,
                    maxHeight: 500.00,
                    imageQuality: 75,
                    allowPhoto: true,
                    includeBlurHash: true,
                    pickerFontFamily: 'Manrope',
                  );
                  if (selectedMedia != null &&
                      selectedMedia.every(
                          (m) => validateFileFormat(m.storagePath, context))) {
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
                    if (selectedUploadedFiles.length == selectedMedia.length &&
                        downloadUrls.length == selectedMedia.length) {
                      setState(() {
                        _model.uploadedLocalFile = selectedUploadedFiles.first;
                        _model.uploadedFileUrl = downloadUrls.first;
                      });
                    } else {
                      setState(() {});
                      return;
                    }
                  }

                  _model.signedURL = await actions.getSignedURL(
                    _model.uploadedFileUrl,
                  );

                  setState(() {});
                },
                text: 'Upload Photo',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 52.0,
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 14.0, 24.0, 14.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0x0DFFAD38),
                  textStyle: GoogleFonts.getFont(
                    'Outfit',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    fontStyle: FontStyle.normal,
                    height: 1.5,
                  ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryText,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
              child: Text(
                'Recommended cover image dimensions: W: 500px H: 500px',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodySmall,
              ),
            ),
            if (_model.uploadedFileUrl == null || _model.uploadedFileUrl == '')
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Text(
                    ' *required',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).error,
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
