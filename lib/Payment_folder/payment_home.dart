import 'package:car_rental/Payment_folder/sms_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25.h),
                            child: Text(
                              "Payment",
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
                        margin: EdgeInsets.only(top: 25.h),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          maxLength: 12,
                          validator: (e) {
                            if (e!.length < 12) {
                              return "Carta raqamni kiriting";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Card number",
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          maxLength: 8,
                          validator: (e) {
                            if (e!.length < 6) {
                              return "Carta date";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Card expirity date",
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.text,
                          maxLength: 16,
                          validator: (e) {
                            if (e!.length < 8) {
                              return "Carta name";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Card holder name",
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.text,
                          maxLength: 8,
                          validator: (e) {
                            if (e!.length < 4) {
                              return "Carta name";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "CVV",
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
                    ],
                  ),
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
                                builder: (context) => SmsPage(),
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
