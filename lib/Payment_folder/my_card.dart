import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class My_Card extends StatefulWidget {
  @override
  _My_CardState createState() => _My_CardState();
}

class _My_CardState extends State<My_Card> {
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
                "My card",
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
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30.h),
                  width: 335.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.yellow[600],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(right: 25.w, left: 25.w, top: 25.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Uzcard",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.more_vert,
                                size: 22.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25.w, top: 40.h),
                            child: Text(
                              "8600 1122 3322 6666",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      //
                      Padding(
                        padding:
                            EdgeInsets.only(right: 25.w, left: 25.w, top: 35.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "06/25",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
