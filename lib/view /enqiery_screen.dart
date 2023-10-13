import 'package:flutter/material.dart';
import 'package:ms_test_3/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart'; // Import the services package for SystemChrome
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';

class EnqieryScreen extends StatelessWidget {
  const EnqieryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StatusContainer(),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Call History",
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset("assets/svg/list_tile_svg_1.svg"),
                  title: Text(
                    "Althaf Rahman",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    "4517 Washington Ave. Manchester, Kentucky 39495",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 14.h, left: 8.w, right: 8.w, bottom: 8.h),
                  child: const DottedLine(
                    dashColor: primaryGrey,
                    dashLength: 5,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "12 Jun 23",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: secondoryGrey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "12.5 Km ",
                      style: TextStyle(
                        color: secondoryGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Unmarked",
                      style: TextStyle(
                        color: secondoryGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: double.infinity,
                  height: 55.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: scaffoldBackgroundColor),
                  child: Center(
                    child: Text(
                      "View Order",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: primaryBlue,
        height: 0.5.sh,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Althaf Rahman",
                style: TextStyle(color: Colors.white, fontSize: 17.sp),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40.h, right: 35.w, left: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Store Status",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: true,
                        //  trackOutlineWidth: MaterialStateProperty.all(6),
                        onChanged: (value) {},
                      ),
                    ),
                    Text(
                      "Closed",
                      style: TextStyle(color: Colors.red, fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
