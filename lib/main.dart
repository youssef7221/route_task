import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_flutter/config/routes/app_routes.dart';
import 'package:route_flutter/features/screen/presentation/manager/products_cubit.dart';
import 'package:route_flutter/features/screen/presentation/widgets/product_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/screen/presentation/pages/products_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(420, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocProvider(create: (context) =>ProductsCubit(),
              child : MaterialApp(
                  debugShowCheckedModeBanner: false,
                  initialRoute: AppRoutes.products,
                  onGenerateRoute: (settings) => Routes.onGenerate(settings)
              ));
        }
    );
  }
}


