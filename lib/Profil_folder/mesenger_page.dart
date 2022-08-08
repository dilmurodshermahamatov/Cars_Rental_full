import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mesenger extends StatefulWidget {
  @override
  _MesengerState createState() => _MesengerState();
}

class _MesengerState extends State<Mesenger> {
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
            title: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                "Messages",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
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
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 50.h),
                          padding: EdgeInsets.only(left: 15.w),
                          width: 260.w,
                          height: 63.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                          ),
                          child: Text(
                            "Hello John Doe, we have a new offer,\ntaican 💲 60 per day",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 45.h, left: 10.w),
                          child: Text(
                            "20:33",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.h, right: 10.w),
                          child: Text(
                            "20:36",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 12.sp),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 30.h),
                          // padding: EdgeInsets.only(left: 15.w),
                          width: 205.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r),
                              bottomLeft: Radius.circular(12.r),
                            ),
                          ),
                          child: Text(
                            "where the offices are located",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),

                    //
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 30.h),
                          padding: EdgeInsets.only(left: 15.w),
                          width: 264.w,
                          height: 63.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                          ),
                          child: Text(
                            "Our office is located at 55 Navoi Street, \nTashkent",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 35.h, left: 10.w),
                          child: Text(
                            "20:40",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.h, right: 10.w),
                          child: Text(
                            "20:45",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 12.sp),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 30.h),
                          // padding: EdgeInsets.only(left: 15.w),
                          width: 205.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r),
                              bottomLeft: Radius.circular(12.r),
                            ),
                          ),
                          child: Text(
                            "Thank you i will definitely go",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 42.h,
                      margin: EdgeInsets.only(bottom: 40.h),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Image.asset('assets/icon/smi.png'),
                          prefixIcon: Image.asset('assets/icon/smile.png'),
                          icon: Image.asset('assets/icon/mes.png'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 1.sp),
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
