import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BonusCard extends StatelessWidget {
  const BonusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 19.h,
      padding: EdgeInsets.all(2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.h),
        image: const DecorationImage(
          image: AssetImage('assets/images/bonus_card.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserInfo(),
              NotificationIcon(),
            ],
          ),
          SizedBox(height: 2.h),
          const BonusInfo(),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 3.h,
          backgroundImage: const AssetImage('assets/images/ava.png'),
        ),
        SizedBox(width: 2.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Добро пожаловать!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.sp,
                fontFamily: 'SFPRODISPLAY',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 0.5.h),
            Text(
              'Личный кабинет',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontFamily: 'SFPRODISPLAY',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.28.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5.h,
      height: 5.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF303030),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 1.3.h,
            left: 1.5.h,
            child: Container(
              height: 1.2.h,
              width: 0.7.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
          const Center(
            child: Icon(
              CupertinoIcons.bell,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class BonusInfo extends StatelessWidget {
  const BonusInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Ваши бонусы',
              style: TextStyle(
                color: const Color(0xFF878787),
                fontSize: 14.sp,
                fontFamily: 'SFPRODISPLAY',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/card.svg',
                  height: 2.h,
                ),
                SizedBox(width: 1.w),
                Text(
                  '584',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'SFPRODISPLAY',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          'ID  584171',
          style: TextStyle(
            color: const Color(0xFF878787),
            fontSize: 14.sp,
            fontFamily: 'SFPRODISPLAY',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
