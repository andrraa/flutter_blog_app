import 'package:flutter/material.dart';
import 'package:todo_app/cores/route/route.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_button.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_footer.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_header.dart';
import 'package:todo_app/features/authentication/presentation/widgets/auth_text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
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
                  title: 'Selamat Datang!',
                  subTitle: 'Masuk untuk Melanjutkan',
                ),
                const SizedBox(height: 40),
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
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lupa Password?',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const AuthButton(buttonTitle: 'Masuk'),
                const SizedBox(height: 20),
                AuthFooter(
                  parentText: 'Belum Mempunyai Akun? ',
                  childText: 'Daftar',
                  onClick: () {
                    Navigator.push(context, AppRoute.signUp());
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
