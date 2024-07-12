import 'package:flutter/material.dart';
import 'package:route_flutter/core/utils/app_colors.dart';
import 'package:route_flutter/core/utils/app_fonts.dart';
import 'package:route_flutter/core/utils/app_images.dart';
import 'package:route_flutter/core/utils/app_strings.dart';
import 'package:route_flutter/features/screen/data/models/ProductsModel.dart';
import 'package:route_flutter/features/screen/presentation/manager/products_cubit.dart';
import 'package:route_flutter/features/screen/presentation/widgets/product_list.dart';
import 'package:route_flutter/features/screen/presentation/widgets/search_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 19.h, left: 10.w, top: 10.h),
              child: Image.asset(AppImages.logo),
            ),
            BlocBuilder<ProductsCubit, ProductsState>(
              builder: (context, state) {
                ProductsModel? myProductModel =
                    context.read<ProductsCubit>().productsModel;
                if (state is ProductsSuccess) {
                  return Expanded(
                    child: Column(
                      children: [
                        const SearchWidget(),
                        Expanded(
                            child: ProductsList(
                          products: myProductModel,
                        ))
                      ],
                    ),
                  );
                } else if (state is ProductsFail) {
                  return Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          AppStrings.error,
                          style: AppFonts.price.copyWith(fontSize: 24),
                        )),
                      ],
                    ),
                  );
                } else {
                  return Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: CircularProgressIndicator(
                          color: AppColors.secondary,
                        )),
                      ],
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
