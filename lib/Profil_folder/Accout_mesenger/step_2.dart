import 'package:car_rental/Profil_folder/Accout_mesenger/step_3.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
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
                "Step 2",
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 35.h),
                                child: Text(
                                  "Passport",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //
                          Container(
                            margin: EdgeInsets.only(top: 15.h),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.text,
                              maxLength: 16,
                              validator: (e) {
                                if (e!.length < 8) {
                                  return "Full name";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Full name",
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
                          Container(
                            margin: EdgeInsets.only(top: 10.h),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.number,
                              maxLength: 14,
                              // maxLengthEnforcement:
                              //     MaxLengthEnforcement.enforced,
                              validator: (e) {
                                if (e!.length < 8) {
                                  return "Passport number";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Passport number",
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

                          //
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Step3(),
                              ));
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 40.h),
                        width: 335.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17.sp,
                                color: Colors.black),
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
