import 'package:flutter/material.dart';
import 'providers/api_provider.dart';
import 'screens/authentication/signup_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DomSysApp extends StatelessWidget {
  const DomSysApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiProvider(
          providers: [
            ChangeNotifierProvider<ApiProvider>(
              create: (_) => ApiProvider(),
            )
          ],
          child: ScreenUtilInit(
              designSize: const Size(375, 818),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (contextm, child) {
                return MaterialApp(
                    title: 'Flutter Demo',
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(
                      primarySwatch: Colors.blue,
                    ),
                    home: const SignUpScreen()
                    );
              }));
    });
  }
}
