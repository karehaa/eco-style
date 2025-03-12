import 'package:eco_style/presentation/pages/registration/sign_in.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class ForgotSuccess extends StatefulWidget {
  const ForgotSuccess({super.key});

  @override
  State<ForgotSuccess> createState() => _ForgotSuccess();
}

class _ForgotSuccess extends State<ForgotSuccess> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final double padding = screenWidth * 0.06;
    final double spacing = screenHeight * 0.02;

    return Scaffold(
      backgroundColor: ColorPallete.lightCream,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: ColorPallete.terracota,
            boxShadow: [
              BoxShadow(
                color: ColorPallete.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignIn(),
                ),
              ),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: ColorPallete.white,
            ),
            title: const Text(
              "Forgot Password",
              style: TextStyle(
                color: ColorPallete.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/image/icons/email_sent_icon.png',
                  width: 64,
                  height: 64,
                ),
                SizedBox(height: spacing * 2),
                const Text(
                  "We have sent a password recover intructions to your email?",
                  style: TextStyle(
                    color: ColorPallete.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: spacing * 1),
                const Text(
                  "Did not recive the email? check you spam filter or resend",
                  style: TextStyle(
                    color: ColorPallete.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
