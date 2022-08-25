import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderPage extends StatefulWidget {
  HeaderPage({Key? key}) : super(key: key);

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  // HeaderImage? _headerImage;
  int length = 0;
  // List<HeaderImage> _lists = [];

  late int currentPage = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentPage < 5) {
        setState(() {
          currentPage++;
        });
      } else {
        setState(() {
          currentPage = 0;
        });
      }

      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
          clipBehavior: Clip.antiAlias,
          height: 150.h,
          child: PageView.builder(
            controller: _pageController,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.amber,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/category.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
        ),
        Positioned(
          top: 220.h,
          left: 170.w,
          child: Container(
            height: 30.h,
            width: 350.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    height: 100,
                    width: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPage == index ? Colors.red : Colors.grey,
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
        )
      ],
    );
  }
}
