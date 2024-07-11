import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_card.dart';

class ProductsList extends StatelessWidget {
  const  ProductsList({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16.0,
        mainAxisExtent: 260.h,
        crossAxisCount: 2,
      ),
      itemCount: 26,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.w,
        vertical: 24.0.h,
      ),
      itemBuilder: (context, index) {
        return ProductCard();
      },
    );
  }
}