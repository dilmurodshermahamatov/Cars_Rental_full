import 'package:car_rental/Filter_folder/detales_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final PageController _pageController = PageController();
  int _i = 1;
  int? _index;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.w, top: 20.h),
                child: Icon(
                  Icons.bookmark_border_outlined,
                  size: 22.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 220.h,
                    child: PageView.builder(
                      onPageChanged: (e) {
                        _i = e;
                        setState(() {});
                      },
                      itemCount: 5,
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        _index = index;
                        return Container(
                          child: Image.asset(
                            "assets/images/mers_v.png",
                            width: 280.w,
                            height: 180.h,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _i = 0;
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(0,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0.h),
                            child: CircleAvatar(
                              radius: _i == 0 ? 8 : 6.r,
                              backgroundColor:
                                  _i == 0 ? Colors.orange : Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _i = 1;
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(1,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: CircleAvatar(
                            radius: _i == 1 ? 8 : 6.r,
                            backgroundColor:
                                _i == 1 ? Colors.orange : Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _i = 2;
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(2,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0.h),
                            child: CircleAvatar(
                              radius: _i == 2 ? 8 : 6.r,
                              backgroundColor:
                                  _i == 2 ? Colors.orange : Colors.grey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _i = 3;
                            setState(() {
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(3,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: CircleAvatar(
                            radius: _i == 3 ? 8 : 6.r,
                            backgroundColor:
                                _i == 3 ? Colors.orange : Colors.grey,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        GestureDetector(
                          onTap: () {
                            _i = 4;
                            setState(() {
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(4,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.linear);
                              } else {}
                            });
                          },
                          child: CircleAvatar(
                            radius: _i == 4 ? 8 : 6.r,
                            backgroundColor:
                                _i == 4 ? Colors.orange : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.w, top: 25.h),
                        width: 140.w,
                        height: 21.h,
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Center(
                          child: Text(
                            "Mercedes -Benz",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 13.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "E-class 221",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Text(
                            "💲110/ day",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                    child: Row(
                      children: [
                        Text(
                          "✔ 5",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Text(
                            "24 rewievs",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 20.h),
                        child: Text(
                          "Rent Duration",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 20.w),
                    child: Row(
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 153.w),
                          child: Text(
                            "To",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5.h),
                          width: 157.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.w),
                                child: Image.asset("assets/icon/m2.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.w),
                                child: Text(
                                  "03.02.2022",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade300),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.h),
                          width: 157.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13.w),
                                child: Image.asset("assets/icon/m1.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.w),
                                child: Text(
                                  "08.02.2022",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade300),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 20.h),
                        child: Text(
                          "Color",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 10.h),
                        child: Text(
                          "Black",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 13.sp),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 20.h),
                        child: Text(
                          "Main options",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              size: 20.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9.w),
                              child: Text(
                                'Bockup camera',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              size: 20.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9.w),
                              child: Text(
                                'Parking system',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              size: 20.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9.w),
                              child: Text(
                                'Cruise control',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 70.w,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              size: 20.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9.w),
                              child: Text(
                                'Sunroof',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detales(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30.h),
                      width: 335,
                      height: 54.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Apply filter",
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
