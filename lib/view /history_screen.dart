import 'package:flutter/material.dart';
import 'package:ms_test_3/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';

class Historyscreen extends StatelessWidget {
  const Historyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text('History'),
          bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Active Orders',
                    style: TextStyle(fontSize: 17.sp), // Increase the font size
                  ),
                ),
                Tab(
                  child: Text(
                    'Past Orders',
                    style: TextStyle(fontSize: 17.sp), // Increase the font size
                  ),
                ),
              ],
              labelColor: primaryBlue,
              indicatorColor: primaryBlue,
              unselectedLabelColor: secondoryGrey),
        ),
        body: TabBarView(
          children: [
            // Content for Tab 1
            SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      3,
                      (index) => OrderTile(),
                    )
                  ],
                ),
              ),
            ),
            // Content for Tab 2
            SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      10,
                      (index) => OrderTile(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderTile extends StatelessWidget {
  const OrderTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 3.5.h),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 0.57.sw,
                child: Text(
                  "ABCD 602452369",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(
                width: 40.w,
              ),
              SvgPicture.asset("assets/svg/done_1.svg")
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: 0.7.sw,
            child: Text("Order delivered on 21 Aug 2022, 12:52 PM by Althaf",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: secondoryGrey,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 14.h, left: 8.w, right: 8.w, bottom: 8.h),
            child: const DottedLine(
              dashColor: primaryGrey,
              dashLength: 5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 47.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Online payment ",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: primaryBlue)),
                Text("₹48",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
