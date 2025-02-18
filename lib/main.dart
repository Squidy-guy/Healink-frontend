import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_theme.dart';
import 'package:healink_app/utils/route_generator.dart';
import 'package:healink_app/utils/screen_bindings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ScreenUtilInit(
          designSize: MediaQuery.sizeOf(context),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GetMaterialApp(
              theme: buildTheme(Brightness.light),
              title: 'Healink App',
              debugShowCheckedModeBanner: false,
              initialBinding: ScreenBindings(),
              getPages: RouteGenerator.getPages(),
              initialRoute: kSplashScreenRoute,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaler: MediaQuery.of(context).textScaler.clamp(
                          minScaleFactor: 1.0,
                          maxScaleFactor: 1.0,
                        ),
                  ),
                  child: child!,
                );
              },
            );
          },
        );
      },
    );
  }
}
