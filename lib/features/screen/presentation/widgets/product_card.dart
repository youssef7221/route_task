
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:route_flutter/core/utils/app_colors.dart';
import 'package:route_flutter/core/utils/app_fonts.dart';

class ProductCard extends StatelessWidget {

  ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: AppColors.borderColor,
          width: 3.0.w,
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.asset(
                  "assets/test.png",
                  fit: BoxFit.cover,
                  width: 191.0.w,
                  height: 126.0.h,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0 ,
                right: 8.0 ,
                top: 8.0),
                child: Column(
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      "Nike Air Jordon Nike shoes flexible for wo..",
                      style: AppFonts.text,
                    ),
                    SizedBox(
                      height: 8.0.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "EGP 1200",
                          style: AppFonts.price,
                        ),
                        SizedBox(
                          width: 16.0.w,
                        ),
                        Text(
                          "2000 EGP",
                          style: AppFonts.oldPrice
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0.h,
                    ),
                    Row(
                      children:[
                        Text(
                          'Review (4.6)',
                          style: AppFonts.review
                        ),
                        SizedBox(
                          width: 4.0.w,
                        ),
                        SvgPicture.asset(
                          'assets/starIcon.svg',
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/plusCircleIcon.svg',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

