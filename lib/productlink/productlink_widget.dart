import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'productlink_model.dart';
export 'productlink_model.dart';

class ProductlinkWidget extends StatefulWidget {
  const ProductlinkWidget({Key? key}) : super(key: key);

  @override
  _ProductlinkWidgetState createState() => _ProductlinkWidgetState();
}

class _ProductlinkWidgetState extends State<ProductlinkWidget> {
  late ProductlinkModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductlinkModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'productlink'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowWebView(
              url: 'https://askbootstrap.com/preview/grofar/app-two/index.html',
              bypass: false,
              height: 800,
              verticalScroll: true,
              horizontalScroll: true,
            ),
          ],
        ),
      ),
    );
  }
}
