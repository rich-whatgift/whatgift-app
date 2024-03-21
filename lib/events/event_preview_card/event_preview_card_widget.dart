import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_preview_card_model.dart';
export 'event_preview_card_model.dart';

class EventPreviewCardWidget extends StatefulWidget {
  const EventPreviewCardWidget({super.key});

  @override
  State<EventPreviewCardWidget> createState() => _EventPreviewCardWidgetState();
}

class _EventPreviewCardWidgetState extends State<EventPreviewCardWidget> {
  late EventPreviewCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventPreviewCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(
                'https://picsum.photos/seed/989/600',
                width: 48.0,
                height: 48.0,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Birthday Cleo',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '6 days',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: ' till Cleo\'s birthday',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
        Container(
          width: 50.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FFIcons.kgroup,
                color: FlutterFlowTheme.of(context).primary,
                size: 20.0,
              ),
              Text(
                '2',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: FlutterFlowTheme.of(context).primary,
                    ),
              ),
            ].divide(SizedBox(width: 4.0)),
          ),
        ),
      ],
    );
  }
}
