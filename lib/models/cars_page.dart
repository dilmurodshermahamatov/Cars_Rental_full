import 'package:car_rental/Filter_folder/filter_page.dart';
import 'package:car_rental/malumot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cars extends StatefulWidget {
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 840),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          body: ListView(
            // scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40.h, left: 20),
                    child: Text(
                      "Select your car",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Container(
                    width: 270.w,
                    height: 45.h,
                    margin: EdgeInsets.only(left: 20.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 22.sp,
                        ),
                        label: Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide:
                              BorderSide(color: Colors.grey.shade300, width: 1),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Filter(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20.w),
                      width: 40.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Center(
                        child: Image.asset("assets/icon/gr.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 15.h),
                    child: Text(
                      "Car brends",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 65.h,
                margin: EdgeInsets.only(top: 8.h),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20.w),
                      width: 68.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Image.asset(
                          Malumotlar.cars[index],
                          width: 40.w,
                          height: 26.h,
                        ),
                      ),
                    );
                  },
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot offers",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 158.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Image.asset("assets/images/land.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              "Land Cruiser 200",
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 158.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Image.asset("assets/images/mers2.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              "Mercedes-Benz 220",
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Convenient offers",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 158.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/bmw2.png"),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              "BMW M5 Sport edition",
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 158.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 17.h),
                            child: Image.asset("assets/images/toyota2.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text(
                              "Toyota Prado",
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Last added",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: 20.w, left: 20.w, top: 10.h, bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 158.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/images/corvette.png"),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              "Chevrolet corvette",
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 158.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Image.asset("assets/images/camaro.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text(
                              "Chevrolet Camaro",
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
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
