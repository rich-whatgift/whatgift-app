import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'badge_count_model.dart';
export 'badge_count_model.dart';

class BadgeCountWidget extends StatefulWidget {
  const BadgeCountWidget({
    super.key,
    int? count,
    bool? orangeBackground,
  })  : this.count = count ?? 0,
        this.orangeBackground = orangeBackground ?? false;

  final int count;
  final bool orangeBackground;

  @override
  State<BadgeCountWidget> createState() => _BadgeCountWidgetState();
}

class _BadgeCountWidgetState extends State<BadgeCountWidget> {
  late BadgeCountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BadgeCountModel());
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
      height: 30.0,
      decoration: BoxDecoration(
        color: widget.orangeBackground ? Color(0x15FFAD38) : Color(0x00000000),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 10.0, 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            FaIcon(
              FontAwesomeIcons.gift,
              color: FlutterFlowTheme.of(context).tertiary,
              size: 16.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.count.toString(),
                  '0',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: FlutterFlowTheme.of(context).tertiary,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
