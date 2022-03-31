import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionADDWidget extends StatefulWidget {
  const TransactionADDWidget({Key key}) : super(key: key);

  @override
  _TransactionADDWidgetState createState() => _TransactionADDWidgetState();
}

class _TransactionADDWidgetState extends State<TransactionADDWidget>
    with TickerProviderStateMixin {
  DateTimeRange calendarSelectedDay;
  String dropDownValue;
  TextEditingController textController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'textFieldOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).darkBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'How much will you like to borrow?',
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Lexend Deca',
                                        fontSize: 18,
                                      ),
                            ),
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context).background,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: FlutterFlowTheme.of(context).textColor,
                                  size: 20,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              controller: textController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                      fontWeight: FontWeight.w300,
                                    ),
                                hintText: 'Amount',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .grayLight,
                                      fontWeight: FontWeight.w300,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).background,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).background,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 24, 24, 24),
                                prefixIcon: Icon(
                                  Icons.attach_money_rounded,
                                  color: FlutterFlowTheme.of(context).textColor,
                                  size: 32,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Please enter an amount';
                                }

                                return null;
                              },
                            ).animated([
                              animationsMap['textFieldOnPageLoadAnimation']
                            ]),
                          ),
                        ),
                        Text(
                          'How many repayments will you like to make?',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 15,
                                  ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-1, -0.4),
                            child: FlutterFlowDropDown(
                              options: ['2  Payments ', '4 Payments'].toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownValue = val),
                              width: 180,
                              height: 50,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.black,
                                  ),
                              hintText: 'Please select...',
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 0,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                              hidesUnderline: true,
                            ),
                          ),
                        ),
                        Text(
                          ' Select start date ',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                        FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          iconColor: FlutterFlowTheme.of(context).tertiaryColor,
                          weekFormat: false,
                          weekStartsMonday: false,
                          onChange: (DateTimeRange newSelectedDate) {
                            setState(
                                () => calendarSelectedDay = newSelectedDate);
                          },
                          titleStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).textColor,
                          ),
                          dayOfWeekStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).textColor,
                          ),
                          dateStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).textColor,
                          ),
                          selectedDateStyle: TextStyle(),
                          inactiveDateStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StreamBuilder<List<LoanRecord>>(
                          stream: queryLoanRecord(
                            queryBuilder: (loanRecord) => loanRecord.where(
                                'LoanAmount',
                                isEqualTo: textController.text),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: SpinKitPumpingHeart(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 40,
                                  ),
                                ),
                              );
                            }
                            List<LoanRecord> buttonLoanRecordList =
                                snapshot.data;
                            // Return an empty Container when the document does not exist.
                            if (snapshot.data.isEmpty) {
                              return Container();
                            }
                            final buttonLoanRecord =
                                buttonLoanRecordList.isNotEmpty
                                    ? buttonLoanRecordList.first
                                    : null;
                            return FFButtonWidget(
                              onPressed: () async {
                                final loanCreateData = createLoanRecordData(
                                  loanName: '',
                                  loanAmount: '',
                                  loanCreated: calendarSelectedDay.start,
                                  loanDescription: '',
                                  loanPayback: calendarSelectedDay.end,
                                  nUmberOfPayments: valueOrDefault<String>(
                                    dropDownValue,
                                    'Pay back in fulll',
                                  ),
                                );
                                await LoanRecord.collection
                                    .doc()
                                    .set(loanCreateData);
                                Navigator.pop(context);
                              },
                              text: 'Next',
                              options: FFButtonOptions(
                                width: 300,
                                height: 70,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                textStyle: FlutterFlowTheme.of(context).title1,
                                elevation: 0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).textColor,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
