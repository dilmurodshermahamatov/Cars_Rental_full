import 'package:car_rental/Payment_folder/my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmsPage extends StatefulWidget {
  @override
  _SmsPageState createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            elevation: 0.0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                "Payment Method",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 10.w, top: 20.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 22.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 45.h),
                            child: Text(
                              "Please enter the code sent to you",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          //
                          Container(
                            margin: EdgeInsets.only(top: 30.h),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              // keyboardType: TextInputType.number,
                              maxLength: 6,
                              validator: (e) {
                                if (e!.length < 4) {
                                  return "Codni kiriting";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Sms number",
                                hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade300, width: 1),
                                ),
                              ),
                            ),
                          ),
                          //
                        ],
                      ),
                    ),
                  ],
                ),
                //
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => My_Card(),
                              ));
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 30.h),
                        width: 335.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17.sp,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
