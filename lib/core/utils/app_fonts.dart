import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
class AppFonts{
  static TextStyle text = GoogleFonts.poppins(
    fontSize: 14.0.sp,
    color: AppColors.textColor,
  );

  static TextStyle price = GoogleFonts.poppins(
    fontSize: 14.0.sp,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle oldPrice =GoogleFonts.poppins(
    fontSize: 11.0.sp,
    color: AppColors.secondary,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle review = AppFonts.price.copyWith(
    fontWeight: FontWeight.w500,
  );
}