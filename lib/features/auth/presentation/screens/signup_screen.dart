import 'package:blog_app/cores/extension/app_extension.dart';
import 'package:blog_app/cores/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_footer.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_form_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: SafeArea(
        child: Container(
          color: AppPallete.primaryColor,
          width: context.screenWidth,
          child: Column(
            children: [
              AuthHeader(
                title: 'Sign Up',
                isSignUpScreen: true,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: Container(
                  width: context.screenWidth,
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
                            'Welcome!',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Fill personal information to get started',
                            style: TextStyle(
                              color: AppPallete.greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 20),
                          AuthFormField(
                            hintText: 'Full Name',
                            controller: nameController,
                          ),
                          const SizedBox(height: 20),
                          AuthFormField(
                            hintText: 'Email',
                            controller: emailController,
                          ),
                          const SizedBox(height: 20),
                          AuthFormField(
                            hintText: '* * * * * * * *',
                            controller: passwordController,
                          ),
                          const SizedBox(height: 20),
                          AuthButton(
                            title: 'Sign Up',
                            onTap: () {},
                          ),
                          const SizedBox(height: 20),
                          AuthFooter(
                            title: 'Already have an account? ',
                            subTitle: 'Sign In',
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
