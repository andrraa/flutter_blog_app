import 'package:flutter/material.dart';
import 'package:todo_app/cores/route/route.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_button.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_footer.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_header.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AuthHeader(
                  title: 'Daftar!',
                  subTitle: 'Daftar Akun Baru untuk Melanjutkan',
                ),
                const SizedBox(height: 40),
                AuthTextField(
                  controller: nameController,
                  placeholder: 'Nama',
                ),
                const SizedBox(height: 20),
                AuthTextField(
                  controller: emailController,
                  placeholder: 'Email',
                ),
                const SizedBox(height: 20),
                AuthTextField(
                  controller: passwordController,
                  placeholder: 'Password',
                  isObscureText: true,
                ),
                const SizedBox(height: 40),
                const AuthButton(buttonTitle: 'Daftar'),
                const SizedBox(height: 20),
                AuthFooter(
                  parentText: 'Sudah Mempunyai Akun? ',
                  childText: 'Masuk',
                  onClick: () {
                    Navigator.push(context, AppRoute.signIn());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
