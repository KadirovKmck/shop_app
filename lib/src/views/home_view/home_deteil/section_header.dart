import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onViewAll;

  const SectionHeader(
      {super.key, required this.title, required this.onViewAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'SFPRODISPLAY',
          ),
        ),
        GestureDetector(
          onTap: onViewAll,
          child: Row(
            children: [
              Text(
                'Все',
                style: TextStyle(
                  color: const Color(0xFF4A4A4A),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'SFPRODISPLAY',
                ),
              ),
              SizedBox(width: 2.w),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16.sp,
                color: const Color(0xFF4A4A4A),
              )
            ],
          ),
        ),
      ],
    );
  }
}
