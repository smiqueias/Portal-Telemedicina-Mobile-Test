import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portaltelemedicina_mobile_test/src/core/app_colors.dart';
import 'package:portaltelemedicina_mobile_test/src/modules/home/router/home_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: AppColors.white,
        ),
        routes: {
          "/": (context) => const HomeRouter(),
        },
      ),
      designSize: const Size(375, 667),
    );
  }
}
