import 'package:car_rental/malumot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rentals extends StatefulWidget {
  @override
  _RentalsState createState() => _RentalsState();
}

class _RentalsState extends State<Rentals> {
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
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                "My rentals",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
          ),
          body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(top: 20.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                width: 335.w,
                height: 420.h,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.w),
                          child: Text(
                            Malumotlar.carsname[index],
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      Malumotlar.car[index],
                      height: 160,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icon/kalender.png"),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                "Date",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              Malumotlar.vaqt[index],
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //
                    Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icon/aylana.png"),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  "Duration",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            Malumotlar.hour[index],
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    //
                    Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icon/compres.png"),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  "Range",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            Malumotlar.km[index],
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    //
                    Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icon/loss.png"),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  "Cost",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            Malumotlar.dol[index],
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
