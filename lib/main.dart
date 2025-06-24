import 'package:flutter/material.dart';
import 'theme/app_colors.dart'; // ✅ Add this line

import 'screens/home_screen.dart';
import 'screens/main_tab_view.dart';
import 'screens/profile_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/auth/profile_setup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryGradientStart,
        colorScheme:
            ColorScheme.fromSwatch(
              brightness: Brightness.dark,
              primarySwatch: Colors.teal,
            ).copyWith(
              primary: AppColors.primaryGradientEnd,
              secondary: AppColors.accentColor,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accentColor,
            foregroundColor: Colors.white,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryGradientEnd,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/login': (context) => const LoginScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
        '/profile-setup': (context) => const ProfileSetupScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/main': (context) => const MainTabView(),
      },
    );
  }
}
