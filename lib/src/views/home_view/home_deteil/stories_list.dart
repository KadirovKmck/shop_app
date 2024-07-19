import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                width: 15.w,
                height: 17.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/stories${index + 1}.jpeg',
                    ),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
            ],
          );
        },
      ),
    );
  }
}
