import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RecommendedProductsList extends StatefulWidget {
  const RecommendedProductsList({super.key});

  @override
  State<RecommendedProductsList> createState() =>
      _RecommendedProductsListState();
}

class _RecommendedProductsListState extends State<RecommendedProductsList> {
  final List<Map<String, String>> recommendedProducts = [
    {
      'image': 'assets/images/doctor.png',
      'id': 'TM-64529',
      'title': 'Jordan кроссовки \nGrape баскетбо...',
      'oldPrice': '1000000 сом',
      'price': '9999999 сом',
    },
    {
      'image': 'assets/images/no_foto.png',
      'id': 'TM-64529',
      'title': 'Jordan кроссовки \n5 Retro',
      'oldPrice': '',
      'price': '15000 сом',
    },
    {
      'image': 'assets/images/no_foto.png',
      'id': 'TM-64529',
      'title': 'Jordan кроссовки \nGrape баскетбо...',
      'oldPrice': '',
      'price': '15000 сом',
    },
    {
      'image': 'assets/images/no_foto.png',
      'id': 'TM-64529',
      'title': 'Jordan кроссовки \nGrape баскетбо...',
      'oldPrice': '',
      'price': '15000 сом',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedProducts.length,
        itemBuilder: (context, index) {
          final product = recommendedProducts[index];
          final price = product['price']!;
          final priceColor = price == '15000 сом' ? Colors.black : Colors.red;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(product['image']!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 1.4.h),
                Text(
                  product['id']!,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                    fontFamily: 'SFPRODISPLAY',
                  ),
                ),
                SizedBox(height: 1.4.h),
                Text(
                  product['title']!,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SFPRODISPLAY',
                  ),
                ),
                SizedBox(height: 1.4.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (product['oldPrice']!.isNotEmpty)
                          Text(
                            product['oldPrice']!,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontFamily: 'SFPRODISPLAY',
                            ),
                          ),
                        if (product['oldPrice']!.isNotEmpty)
                          SizedBox(height: 1.h),
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SFPRODISPLAY',
                            color: priceColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 2.w),
                    Container(
                      width: 7.w,
                      height: 7.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 5.w,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
