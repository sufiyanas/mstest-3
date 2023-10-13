import 'package:flutter/material.dart';
import 'package:ms_test_3/const.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 87.h, bottom: 20.h),
            color: Colors.white,
            child: ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundColor: thirdGrey,
                child: Icon(
                  Icons.person_2_outlined,
                  color: secondoryGrey,
                  size: 30,
                ),
              ),
              title: const Text("Althaf Rahman",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                Text("View more",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    )),
                const Icon(
                  Icons.arrow_right,
                  color: Colors.red,
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.white,
                width: 0.49.sw,
                height: 78.h,
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.phone_in_talk_outlined),
                    Text("Help & Support",
                        style: TextStyle(
                          fontSize: 15,
                        ))
                  ],
                ),
              ),
              Container(
                  color: Colors.white,
                  width: 0.49.sw,
                  height: 78.h,
                  padding: const EdgeInsets.all(28),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.settings),
                        Text("Settings",
                            style: TextStyle(
                              fontSize: 15.w,
                            ))
                      ]))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7.h),
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Order settings.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Divider(
                  color: primaryGrey,
                ),
                SettingsTile(
                    title: "Orders History", iconData: Icons.description),
                SettingsTile(
                  iconData: Icons.topic,
                  title: "Address details",
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Payments & coupons.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Divider(
                  color: primaryGrey,
                ),
                SettingsTile(
                    title: "Payments & refund",
                    iconData: Icons.payment_outlined),
                SettingsTile(
                  iconData: Icons.workspace_premium,
                  title: "Explore offers",
                ),
                SettingsTile(
                  iconData: Icons.share,
                  title: "Refers & earn",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    required this.iconData,
  });
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.black,
      ),
      title: Text(title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          )),
      trailing: const Icon(
        Icons.navigate_next,
        color: Colors.black,
      ),
    );
  }
}
