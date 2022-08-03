import 'package:car_rental/Home/pin_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_mask/easy_mask.dart';

class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Color color = Colors.white;
  Color blac = Colors.black;
  int son = 13;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 24.sp),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 60.h, left: 20.w, right: 20.w),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: son,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.length < 13) {
                            return "Raqam kiriting";
                          } else {
                            color = Colors.black;
                            blac = Colors.white;
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        inputFormatters: [
                          TextInputMask(
                            mask: '\\+999999999999',
                            // placeholder: '_',
                            maxPlaceHolders: son,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PinCode(),
                        ));
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30.h, left: 20, right: 20),
                  width: 335.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                          color: blac),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
