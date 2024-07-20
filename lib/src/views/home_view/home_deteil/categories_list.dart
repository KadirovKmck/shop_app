import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final List<String> categories = [
    'Рубашки',
    'Брюки',
    'Обувь',
    'Толстовки',
  ];

  final List<String> categoryPhotos = [
    'assets/images/rabashka.png',
    'assets/images/no_foto.png',
    'assets/images/obuv.png',
    'assets/images/tolstovka.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Column(
              children: [
                Container(
                  width: 30.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(categoryPhotos[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF111111),
                    fontSize: 14.sp,
                    // fontWeight: FontWeight.w100,
                    fontFamily: 'SFPRODISPLAY',
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
