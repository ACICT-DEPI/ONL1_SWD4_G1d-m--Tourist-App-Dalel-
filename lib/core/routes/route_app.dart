import 'package:dalel/features/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/author/presentation/forgot_password_view.dart';
import 'package:dalel/features/author/presentation/sign_in_view.dart';
import 'package:dalel/features/author/presentation/sign_up_view.dart';
import 'package:dalel/features/home/widgets/home_nav_bar_widget.dart';
import 'package:dalel/features/splashs/presentation/view.dart';
import 'package:dalel/features/on%20boaring/presentarion/onboard_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter ourRouter = GoRouter(
  routes: [
    // Home screen
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    // OnBoarding screen
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoarding(),
    ),
    // SignIn screen
    GoRoute(
      path: '/SignInScreen',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignInScreen(),
      ),
    ),
    // SignUp screen
    GoRoute(
      path: '/SignUpScreen',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpScreen(),
      ),
    ),
    GoRoute(
      path: '/forgotPassword',
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgotPasswordView(),
      ),
    ),
    GoRoute(
      path: '/homeNavBar',
      builder: (context, state) => const HomeNavBarWidget(),
    ),
  ],
);
