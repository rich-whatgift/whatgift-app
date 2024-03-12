import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_item_model.dart';
export 'nav_item_model.dart';

class NavItemWidget extends StatefulWidget {
  const NavItemWidget({
    super.key,
    this.purpleStyle,
    this.lightStyle,
    this.activeState,
    String? title,
    required this.icon,
  }) : this.title = title ?? 'nav item';

  final bool? purpleStyle;
  final bool? lightStyle;
  final bool? activeState;
  final String title;
  final Widget? icon;

  @override
  State<NavItemWidget> createState() => _NavItemWidgetState();
}

class _NavItemWidgetState extends State<NavItemWidget> {
  late NavItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(),
        child: MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          child: Stack(
            alignment: AlignmentDirectional(-1.0, 0.0),
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: () {
                    if (widget.activeState!) {
                      return FlutterFlowTheme.of(context).white;
                    } else if (_model.mouseRegionHovered!) {
                      return FlutterFlowTheme.of(context).secondary;
                    } else {
                      return Color(0x00000000);
                    }
                  }(),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: valueOrDefault<Color>(
                      widget.activeState!
                          ? FlutterFlowTheme.of(context).textFieldBorder
                          : FlutterFlowTheme.of(context).transparent,
                      FlutterFlowTheme.of(context).transparent,
                    ),
                    width: 1.0,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: widget.icon!,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.title,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Manrope',
                            color: valueOrDefault<Color>(
                              widget.activeState!
                                  ? FlutterFlowTheme.of(context).black
                                  : FlutterFlowTheme.of(context).white,
                              FlutterFlowTheme.of(context).white,
                            ),
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          onEnter: ((event) async {
            setState(() => _model.mouseRegionHovered = true);
          }),
          onExit: ((event) async {
            setState(() => _model.mouseRegionHovered = false);
          }),
        ),
      ),
    );
  }
}
