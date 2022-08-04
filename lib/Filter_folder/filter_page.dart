import 'package:car_rental/malumot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2035));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate2,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2035));
    if (picked != null && picked != selectedDate2) {
      setState(() {
        selectedDate2 = picked;
      });
    }
  }

  List<bool> _list = List.generate(4, (i) => false);
  List<bool> _list2 = List.generate(3, (i) => false);
  //
  List<bool> _list3 = List.generate(4, (i) => false);
  List<bool> _list4 = List.generate(4, (i) => false);

  late double _value = 0;

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
            title: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                "Filter",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Row(
                      children: [
                        Text(
                          "Data",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _selectDate(context),
                        child: Container(
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
                                  "${selectedDate.toLocal()}".split(' ')[0],
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade300),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _selectDate2(context),
                        child: Container(
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
                                  "${selectedDate2.toLocal()}".split(' ')[0],
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade300),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "Model",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 67.h,
                    margin: EdgeInsets.only(top: 8.h),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                                if (!_list[index]) {
                                  _list = List.generate(4, (i) => false);
                                  _list[index] = true;
                                } else {
                                  _list[index] = false;
                                }
                              },
                              child: Container(
                                width: 68.w,
                                height: 64.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: _list[index]
                                          ? Colors.yellow
                                          : Colors.grey.shade300,
                                      width: 1),
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
                              ),
                            ),
                            SizedBox(width: 20.w),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "Class",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  //
                  Container(
                    height: 75.h,
                    margin: EdgeInsets.only(top: 8.h),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                                if (!_list2[index]) {
                                  _list2 = List.generate(3, (i) => false);
                                  _list2[index] = true;
                                } else {
                                  _list2[index] = false;
                                }
                              },
                              child: Container(
                                width: 98.w,
                                height: 70.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: _list2[index]
                                          ? Colors.yellow
                                          : Colors.grey.shade300,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Image.asset(
                                        Malumotlar.clas[index],
                                        width: 40.w,
                                        height: 30.h,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.h),
                                      child: Text(
                                        Malumotlar.clname[index],
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                          ],
                        );
                      },
                    ),
                  ),
                  //
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "Price",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 35.h,
                    child: Slider(
                      thumbColor: Colors.yellow,
                      activeColor: Colors.grey,
                      inactiveColor: Colors.black,
                      divisions: 50,
                      max: 500,
                      label: "💲${_value.toInt()}",
                      value: _value,
                      onChanged: (e) {
                        setState(() {
                          _value = e;
                        });
                      },
                    ),
                  ),
                  //
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "Km",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 45.h,
                    margin: EdgeInsets.only(top: 8.h),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                                if (!_list3[index]) {
                                  _list3 = List.generate(4, (i) => false);
                                  _list3[index] = true;
                                } else {
                                  _list3[index] = false;
                                }
                              },
                              child: Container(
                                width: 70.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: _list3[index]
                                          ? Colors.yellow
                                          : Colors.grey.shade400,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Center(
                                  child: Text(
                                    Malumotlar.narx[index],
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Text(
                          "Body type",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
//
                  Container(
                    height: 70.h,
                    margin: EdgeInsets.only(top: 8.h),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                                if (!_list4[index]) {
                                  _list4 = List.generate(4, (i) => false);
                                  _list4[index] = true;
                                } else {
                                  _list4[index] = false;
                                }
                              },
                              child: Container(
                                width: 70.w,
                                height: 67.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: _list4[index]
                                          ? Colors.yellow
                                          : Colors.grey.shade400,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/catalog.png",
                                      height: 45.h,
                                      width: 60.w,
                                    ),
                                    Text(
                                      Malumotlar.turi[index],
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w),
                          ],
                        );
                      },
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 27.h),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
