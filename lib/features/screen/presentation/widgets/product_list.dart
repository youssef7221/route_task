import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_flutter/features/screen/data/models/ProductsModel.dart';

import 'product_card.dart';

class ProductsList extends StatelessWidget {
   const ProductsList({super.key ,required this.products});

  final ProductsModel? products;
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
      itemCount: products?.products?.length,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.w,
        vertical: 24.0.h,
      ),
      itemBuilder: (context, index) {
        return ProductCard(index: index,
        product: products,);
      },
    );
  }
}