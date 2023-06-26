import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo/common/utils/constants.dart';
import 'package:riverpod_todo/features/onboarding/pages/onboarding_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 825),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'TODO',
          theme: ThemeData(
            scaffoldBackgroundColor: AppConstants.kBkDark,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.purple,
            ),
            useMaterial3: true,
          ),
          themeMode: ThemeMode.dark,
          home: const OnboardingPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
