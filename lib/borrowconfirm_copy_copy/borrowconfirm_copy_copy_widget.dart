import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BorrowconfirmCopyCopyWidget extends StatefulWidget {
  const BorrowconfirmCopyCopyWidget({
    Key key,
    this.amount,
    this.profileImage,
    this.borrowPeriodStart,
    this.borrowPeriodEnd,
    this.numberOfPayments,
  }) : super(key: key);

  final double amount;
  final String profileImage;
  final String borrowPeriodStart;
  final String borrowPeriodEnd;
  final String numberOfPayments;

  @override
  _BorrowconfirmCopyCopyWidgetState createState() =>
      _BorrowconfirmCopyCopyWidgetState();
}

class _BorrowconfirmCopyCopyWidgetState
    extends State<BorrowconfirmCopyCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF090F13),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.5, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 90, 0),
                      child: AuthUserStreamWidget(
                        child: Text(
                          valueOrDefault<String>(
                            currentUserDisplayName,
                            'Name',
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFF1E2429),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      buttonSize: 46,
                      icon: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFF4B39EF),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                child: AuthUserStreamWidget(
                  child: Image.network(
                    currentUserPhoto,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'Lender Confirmed!',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF4B39EF),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                '\$100.20',
                style: GoogleFonts.getFont(
                  'Overpass',
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 72,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
              child: Text(
                'Your lender has been confirmed, it may take 1-2 hours in order for your loan to go through and show up in your transation list. The money will be account within 24hrs.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF8B97A2),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF1E2429),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF090F13),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/masterCard@2x.png',
                        width: 40,
                        height: 40,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                            child: Text(
                              'Mastercard Ending in 4021',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                            child: Text(
                              '\$100.20',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Borrow Period',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  widget.borrowPeriodStart,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  '-',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
                Text(
                  widget.borrowPeriodEnd,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Number of payments',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  widget.numberOfPayments,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'homePage_alt_1'),
                          ),
                        );
                      },
                      text: 'Go Home',
                      options: FFButtonOptions(
                        width: 230,
                        height: 50,
                        color: Color(0xFF1E2429),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
