import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_online/widgets/app_text.dart';
import 'package:shopping_online/widgets/app_text_field.dart';
import 'package:shopping_online/widgets/custom_drawer.dart';
import 'package:shopping_online/widgets/header_slider.dart';

class HomeScreen extends StatefulWidget {
  static String homeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(context),
      drawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
        child: SafeArea(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderPage(),
              SizedBox(
                height: 30.h,
              ),
              _buildType(name: 'Category', onPress: () {}),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 80.h,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return _buildCategory();
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              _buildType(name: 'Latest Product', onPress: () {}),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 270.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _buildProduct(
                        image: 'assets/images/09_429161 1.png',
                        text: 'Jacket Pullover Sweat Hoodie');
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              _buildType(name: 'Recommended for you', onPress: () {}),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 270.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _buildProduct(
                        image: 'assets/images/product.png',
                        text: 'Nike Jordan 1 Retro Yellow');
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }

  Container _buildProduct({required String image, required String text}) {
    return Container(
      margin: EdgeInsets.only(right: 21.w),
      height: 265.5.h,
      width: 152.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 180.h,
            width: 152.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 28.h,
                  width: 28.w,
                  child: Icon(Icons.favorite_border, color: Color(0xffFF4848)),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Image.asset(image)
              ],
            ),
            decoration: BoxDecoration(
                color: Color(0xffDEDEE0),
                borderRadius: BorderRadius.circular(20.r)),
          ),
          // SizedBox(
          //   height: 15.h,
          // ),
          AppText(
            text: text,
            fontSize: 13.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 20.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
                AppText(text: '(5.0)', fontSize: 12, color: Color(0xff3E3E3E))
              ],
            ),
          ),
          AppText(
            text: '\$608',
            fontSize: 12.sp,
            color: Color(0xffFF7750),
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Container _buildType({required String name, required VoidCallback onPress}) {
    return Container(
      width: 325.w,
      height: 28.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: name,
            fontSize: 17.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          TextButton(
            onPressed: onPress,
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildCategory() {
    return Container(
      margin: EdgeInsets.only(right: 20.w),
      height: 80.h,
      width: 235.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
                text: 'Furniture',
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15.r),
        image: DecorationImage(
          image: AssetImage('assets/images/category.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  AppBar CustomAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
        },
      ),
      title: AppText(
          text: '👋 Hello, Rizale', color: Color(0xff3E3E3E), fontSize: 16),
      centerTitle: true,
      actions: [
        Icon(
          Icons.notifications,
          color: Colors.black,
        )
      ],
    );
  }
}
