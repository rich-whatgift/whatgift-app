import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_gift_guide_model.dart';
export 'empty_gift_guide_model.dart';

class EmptyGiftGuideWidget extends StatefulWidget {
  const EmptyGiftGuideWidget({super.key});

  @override
  State<EmptyGiftGuideWidget> createState() => _EmptyGiftGuideWidgetState();
}

class _EmptyGiftGuideWidgetState extends State<EmptyGiftGuideWidget> {
  late EmptyGiftGuideModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyGiftGuideModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/gift_box.png',
                  width: 72.0,
                  height: 72.0,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 4.0),
                child: Text(
                  'No Gift Matched',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Text(
                'No gifts found based on search and filter. Try other keywords and filter options.\n',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
