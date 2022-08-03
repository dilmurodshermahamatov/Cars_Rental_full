import 'dart:async';

import 'package:car_rental/models/cars_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinCode extends StatefulWidget {
  @override
  _PinCodeState createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;
  final formKey = GlobalKey<FormState>();
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 840),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Icon(
                Icons.arrow_back_ios,
                size: 22.sp,
                color: Colors.black,
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                "Back",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35.h),
                alignment: Alignment.center,
                child: Text(
                  "Enter verification code",
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                alignment: Alignment.center,
                child: Text(
                  "Enter OPT code send to\n   your mobile number",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.w, right: 50.w, top: 37.h),
                child: Form(
                  key: formKey,
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 55.h,
                      fieldWidth: 55.w,
                      borderRadius: BorderRadius.circular(8.r),
                      activeFillColor: Colors.white,
                      disabledColor: Colors.black,
                      inactiveColor: Colors.grey,
                      inactiveFillColor: Colors.white,
                      selectedColor: Colors.grey,
                      activeColor: Colors.grey,
                      selectedFillColor: Colors.white,
                    ),
                    animationDuration: const Duration(milliseconds: 200),
                    backgroundColor: Colors.white,
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    textStyle: const TextStyle(color: Colors.black),
                    onCompleted: (v) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Car_Navigator(),
                          ));
                    },
                    onChanged: (value) {
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                    appContext: context,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 52.w),
                child: Row(
                  children: [
                    Text(
                      "The code didn't come? ",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: Colors.grey),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 68.w,
                      height: 19.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.r),
                        color: Colors.yellow[700],
                      ),
                      child: Center(
                        child: Text(
                          "Send again ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
