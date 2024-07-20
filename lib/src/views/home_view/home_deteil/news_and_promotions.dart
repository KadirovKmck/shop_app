import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsAndPromotions extends StatelessWidget {
  final PageController pageController;
  final int totalItems;

  const NewsAndPromotions(
      {super.key, required this.pageController, required this.totalItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: totalItems,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Container(
                  width: 70.w,
                  height: 23.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner${index + 1}.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 1.h),
        SmoothPageIndicator(
          controller: pageController,
          count: totalItems,
          effect: ExpandingDotsEffect(
            dotHeight: 0.5.w,
            dotWidth: 3.5.w,
            activeDotColor: const Color(0xFF999999),
            dotColor: const Color(0xFF525252),
          ),
        ),
      ],
    );
  }
}
