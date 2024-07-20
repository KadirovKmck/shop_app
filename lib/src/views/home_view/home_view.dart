import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/src/views/home_view/home_deteil/bonus_card.dart';
import 'package:shop_app/src/views/home_view/home_deteil/categories_list.dart';
import 'package:shop_app/src/views/home_view/home_deteil/news_and_promotions.dart';
import 'package:shop_app/src/views/home_view/home_deteil/recommended_products_list.dart';
import 'package:shop_app/src/views/home_view/home_deteil/section_header.dart';
import 'package:shop_app/src/views/home_view/home_deteil/stories_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController();
  final int totalItems = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
          child: Column(
            children: [
              const BonusCard(),
              SizedBox(height: 2.h),
              const StoriesList(),
              SizedBox(height: 2.h),
              SectionHeader(title: 'Новости и Акции', onViewAll: () {}),
              SizedBox(height: 2.h),
              NewsAndPromotions(
                pageController: _pageController,
                totalItems: totalItems,
              ),
              SizedBox(height: 2.h),
              SectionHeader(title: 'Категории', onViewAll: () {}),
              SizedBox(height: 2.h),
              const CategoriesList(),
              SizedBox(height: 2.h),
              SectionHeader(title: 'Рекомендуемые', onViewAll: () {}),
              SizedBox(height: 2.h),
              const RecommendedProductsList(),
            ],
          ),
        ),
      ),
    );
  }
}
