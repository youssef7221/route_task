import 'package:flutter/material.dart';
import 'package:route_flutter/core/utils/app_colors.dart';
import 'package:route_flutter/core/utils/app_images.dart';
import 'package:route_flutter/features/screen/presentation/widgets/product_list.dart';
import 'package:route_flutter/features/screen/presentation/widgets/search_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding:  EdgeInsets.only(top :50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 19.h,left: 10.w,top: 10.h),
              child: Image.asset(AppImages.logo),
            ),
            const SearchWidget(),
            const Expanded(child: ProductsList())
          ],
        ),
      ),
      );
  }
}