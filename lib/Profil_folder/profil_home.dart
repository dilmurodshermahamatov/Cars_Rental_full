import 'package:car_rental/Payment_folder/payment_home.dart';
import 'package:car_rental/Profil_folder/Accout_mesenger/step_1.dart';
import 'package:car_rental/Profil_folder/mesenger_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
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
                "Profile",
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
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25.h),
                          child: Image.asset(
                            'assets/icon/profil.png',
                            width: 73.w,
                            height: 70.h,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 75.h, left: 63),
                          child: Image.asset(
                            "assets/icon/proicon.png",
                            width: 19.w,
                            height: 19.h,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 10.h),
                          child: Text(
                            "Fayzullayev \nMuhammadbobur",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30.w, top: 6.h),
                          child: Text(
                            "id:256987",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Payment(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon/picon.png',
                              width: 16.w,
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(
                                "Payment Methods",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, size: 20.sp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 5.w),
                  child: Divider(
                    thickness: 1.h,
                    color: Colors.grey,
                  ),
                ),
                //
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mesenger(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon/messenger.png',
                              width: 16.w,
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(
                                "Messages",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, size: 20.sp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 5.w),
                  child: Divider(
                    thickness: 1.h,
                    color: Colors.grey,
                  ),
                ),
                //
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Step1(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon/accon.png',
                              width: 16.w,
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(
                                "Account details",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, size: 20.sp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 5.w),
                  child: Divider(
                    thickness: 1.h,
                    color: Colors.grey,
                  ),
                ),
                //
                GestureDetector(
                  onTap: () => showDialog(
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.grey.shade300,
                          elevation: 0.0,
                          actionsPadding: EdgeInsets.zero,
                          contentPadding: EdgeInsets.zero,
                          insetPadding: EdgeInsets.zero,
                          buttonPadding: EdgeInsets.zero,
                          titlePadding:
                              EdgeInsets.only(top: 20.h, bottom: 10.h),
                          title: Center(
                            child: Text(
                              "Выйти?",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          content: Container(
                            height: 130.h,
                            child: Column(
                              children: [
                                Text(
                                  "Вы можете пользоваться Egar.uz \n на всех Ваших устройствах \n одновременно",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 24.h),
                                Text(
                                  "Важно: если Вы выйдете из \n аккаунта все секретные чаты на \n этом устройстве будут утеряны",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            Divider(
                              color: Colors.grey,
                              thickness: 1.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: Center(
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: Center(
                                    child: Text(
                                      'OK',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                      context: context),
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.login_rounded,
                              size: 25.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(
                                "Log out",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_ios, size: 20.sp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 5.w),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,
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
