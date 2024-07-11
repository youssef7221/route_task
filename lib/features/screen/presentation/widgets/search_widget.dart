import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_flutter/core/utils/app_colors.dart';
import 'package:route_flutter/core/utils/app_fonts.dart';

import '../../../../core/utils/app_strings.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        Container(
          padding: EdgeInsets.only(left: 10.w),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.secondary
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          width: 320.w,
          child: TextField(
            decoration: InputDecoration(
              hintText:AppStrings.search,
            hintStyle: AppFonts.text,
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search,color: AppColors.secondary,),
            ),
          ),
        ),
         SizedBox(
          width: 30.w,
        ),
        Icon(Icons.shopping_cart_outlined,color: AppColors.secondary,)
      ],
    );
  }
}
