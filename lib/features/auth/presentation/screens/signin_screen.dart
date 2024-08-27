import 'package:blog_app/cores/route/app_route.dart';
import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_footer.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_form_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const AuthHeader(title: 'Sign In'),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: AppPallete.whiteColor,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'To continue please login with your personal info',
                          style: TextStyle(
                            color: AppPallete.greyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          hintText: 'Email',
                          controller: emailController,
                        ),
                        const SizedBox(height: 20),
                        AuthFormField(
                          hintText: 'Password',
                          isObsecure: true,
                          controller: passwordController,
                        ),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: AppPallete.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        AuthButton(
                          title: 'Sign In',
                          onTap: () {},
                        ),
                        const SizedBox(height: 20),
                        AuthFooter(
                          title: 'Don\'t have an account? ',
                          subTitle: 'Sign Up',
                          onTap: () {
                            Navigator.push(context, AppRoute.signUpRoute());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
