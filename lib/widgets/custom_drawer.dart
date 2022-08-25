import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_online/widgets/app_text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 74.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 55.h,
                  width: 176.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 25,
                      ),
                      AppText(
                          text: 'Rizale Greyrat',
                          fontSize: 16.sp,
                          color: Colors.black)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            ListTile(
              title: AppText(
                text: 'Home',
                fontSize: 14.sp,
                color: Color(0xffFF7750),
                fontWeight: FontWeight.bold,
              ),
              onTap: () {},
            ),
            ListTile(
              title: AppText(
                text: 'My Wallet',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
            ListTile(
              title: AppText(
                text: 'Category',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
            ListTile(
              title: AppText(
                text: 'My Wallet',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
            ListTile(
              title: AppText(
                text: 'My Likes',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 50.h,
            ),
            ListTile(
              title: AppText(
                text: 'Contact Us',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
            ListTile(
              title: AppText(
                text: 'About',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
            ListTile(
              title: AppText(
                text: 'Help',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
            ListTile(
              title: AppText(
                text: 'Logout',
                fontSize: 14.sp,
                color: Color(0xff3E3E3E),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
