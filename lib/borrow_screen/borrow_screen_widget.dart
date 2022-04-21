import '../borrowconfirm_copy_copy/borrowconfirm_copy_copy_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BorrowScreenWidget extends StatefulWidget {
  const BorrowScreenWidget({Key key}) : super(key: key);

  @override
  _BorrowScreenWidgetState createState() => _BorrowScreenWidgetState();
}

class _BorrowScreenWidgetState extends State<BorrowScreenWidget>
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
      backgroundColor: Color(0xFF1D262D),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How much will you like to borrow?',
                    style: FlutterFlowTheme.of(context).title1.override(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).grayLight,
                            fontWeight: FontWeight.w300,
                          ),
                      hintText: 'Amount',
                      hintStyle: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).grayLight,
                            fontWeight: FontWeight.w300,
                          ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).background,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).background,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 24, 24, 24),
                      prefixIcon: Icon(
                        Icons.attach_money_rounded,
                        color: FlutterFlowTheme.of(context).textColor,
                        size: 32,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).title1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ).animated([animationsMap['textFieldOnPageLoadAnimation']]),
                ),
              ),
              Text(
                'How many repayments will you like to make?',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      fontSize: 15,
                    ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(-1, -0.4),
                  child: FlutterFlowDropDown(
                    options: ['2  Payments ', '4 Payments'].toList(),
                    onChanged: (val) => setState(() => dropDownValue = val),
                    width: 180,
                    height: 50,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.black,
                        ),
                    hintText: 'Please select...',
                    fillColor: Colors.white,
                    elevation: 2,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    borderRadius: 0,
                    margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
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
                initialDate: getCurrentTimestamp,
                onChange: (DateTimeRange newSelectedDate) {
                  setState(() => calendarSelectedDay = newSelectedDate);
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BorrowconfirmCopyCopyWidget(),
                      ),
                    );
                  },
                  text: 'Button',
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
