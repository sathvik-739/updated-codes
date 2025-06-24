import 'package:flutter/material.dart';

import 'package:finx_flutter/screens/auth/signup_screen.dart';
import 'package:finx_flutter/screens/auth/login_screen.dart';
import 'package:finx_flutter/screens/auth/forgot_password_screen.dart';
import 'package:finx_flutter/screens/auth/profile_setup_screen.dart';

import 'package:finx_flutter/screens/main_tab_view.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/signup': (context) => SignUpScreen(),
  '/login': (context) => LoginScreen(),
  '/forgot': (context) => ForgotPasswordScreen(),
  '/setup': (context) => ProfileSetupScreen(),
  '/main': (context) => MainTabView(),
};
