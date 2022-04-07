import '../flutter_flow/flutter_flow_credit_card_form.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Bank3Widget extends StatefulWidget {
  const Bank3Widget({Key key}) : super(key: key);

  @override
  _Bank3WidgetState createState() => _Bank3WidgetState();
}

class _Bank3WidgetState extends State<Bank3Widget> {
  TextEditingController textController;
  bool checkboxListTileValue;
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0x002596BE),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Bank Link',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.black,
                          size: 24,
                        ),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue ??= true,
                              onChanged: (newValue) => setState(
                                  () => checkboxListTileValue = newValue),
                              title: Text(
                                'Credit Card',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              tileColor: Color(0xFF1D262D),
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Your Name',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                child: FlutterFlowCreditCardForm(
                  formKey: creditCardFormKey,
                  creditCardModel: creditCardInfo,
                  obscureNumber: true,
                  obscureCvv: false,
                  spacing: 10,
                  textStyle: GoogleFonts.getFont(
                    'Roboto',
                    color: FlutterFlowTheme.of(context).textColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  inputDecoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF9E9E9E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF9E9E9E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'homePage_alt_1'),
                      ),
                    );
                  },
                  text: 'Link',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
