import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:route_flutter/core/utils/app_colors.dart';
import 'package:route_flutter/core/utils/app_fonts.dart';
import 'package:route_flutter/core/utils/app_images.dart';
import 'package:route_flutter/core/utils/app_strings.dart';
import 'package:route_flutter/features/screen/data/models/ProductsModel.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, required this.index});

  final int index;
  final ProductsModel? product;

  @override
  Widget build(BuildContext context) {
    // Calculation to Take The Price Before Discount
    num? oldPrice = (product!.products![index].price! /
        ((1 - product!.products![index].discountPercentage! / 100)));
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: AppColors.borderColor,
          width: 3.0.w,
        ),
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          InkWell(
              onTap: () {
                Fluttertoast.showToast(
                  msg: AppStrings.successFav,
                  backgroundColor: AppColors.secondary,
                );
              },
              child: Image.asset(AppImages.heart,
              height: 50.h,width: 50.w,)),
          Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: SizedBox(
                  width: 120.w,
                  height: 120.h,
                  child: CachedNetworkImage(
                    imageUrl: product!.products![index].images![0],
                    fit: BoxFit.contain,
                    errorWidget: (context, url, error) {
                      return const Center(child: Icon(Icons.error));
                    },
                    placeholder: (context, url) {
                      return Center(
                          child: CircularProgressIndicator(
                              color: AppColors.secondary));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                      child: Text(
                        maxLines: 2,
                        "${product!.products?[index].title}",
                        style: AppFonts.text,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "EGP ${(product!.products![index].price)}",
                          style: AppFonts.price,
                        ),
                        SizedBox(
                          width: 4.0.w,
                        ),
                        Text("${oldPrice.truncate()} EGP",
                            style: AppFonts.oldPrice),
                      ],
                    ),
                    SizedBox(
                      height: 8.0.h,
                    ),
                    Row(
                      children: [
                        Text("Review (${product?.products![index].rating})",
                            style: AppFonts.review),
                        SizedBox(
                          width: 4.0.w,
                        ),
                        Image.asset(
                          AppImages.star,
                          height: 20.h,width: 20.w,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Fluttertoast.showToast(
                                msg: AppStrings.successCart,
                                backgroundColor: AppColors.secondary);
                          },
                          child: Image.asset(
                            AppImages.plus,
                            height: 35.h,width: 35.w,
                          ),
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
