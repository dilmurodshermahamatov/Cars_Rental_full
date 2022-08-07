import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Step3 extends StatefulWidget {
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  Color white = Colors.white;
  Color blak = Colors.black;
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
                "Step 3",
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
                                  "Driving License",
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
                            margin: EdgeInsets.only(top: 20.h),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.phone,
                              maxLength: 12,
                              validator: (e) {
                                if (e!.length < 6) {
                                  return "License number";
                                } else {
                                  white = Colors.black;
                                  blak = Colors.white;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "License number",
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
                              keyboardType: TextInputType.phone,
                              maxLength: 8,
                              validator: (e) {
                                if (e!.length < 6) {
                                  return "License expirity date";
                                } else {
                                  white = Colors.black;
                                  blak = Colors.white;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "License expirity date",
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
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        if (_formKey.currentState!.validate()) {
                          white = Colors.black;
                          blak = Colors.white;
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 40.h),
                        width: 335.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17.sp,
                                color: blak),
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
