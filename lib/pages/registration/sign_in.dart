import 'package:eco_style/pages/onboarding/onboarding3.dart';
import 'package:eco_style/pages/registration/sign_up.dart';
import 'package:eco_style/themes/color_pallete.dart';
import 'package:eco_style/widgets/multi_purpose_button.dart';
import 'package:eco_style/widgets/non_visible_field.dart';
import 'package:eco_style/widgets/transparent_button.dart';
import 'package:eco_style/widgets/visible_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  bool passwordIsShown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Onboarding3(),
            ),
          ),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: ColorPallete.terracota,
        ),
        title: const Text(
          "Login",
          style: TextStyle(
            color: ColorPallete.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                  color: ColorPallete.terracota,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: ColorPallete.darkBlue,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const VisibleField(
                labelText: "xxx@gmail.com",
              ),
              const SizedBox(
                height: 14,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: ColorPallete.darkBlue,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const NonVisibleField(
                labelText: "Input your password",
              ),
              const SizedBox(
                height: 24,
              ),
              const MultiPurposeButton(
                buttonText: "Login",
                buttonColor: ColorPallete.terracota,
                textColor: ColorPallete.white,
                textWeight: FontWeight.w600,
                buttonHeight: 52,
                radius: 8,
                routeDestination: SignIn(),
                hasIcon: false,
              ),
              const SizedBox(
                height: 24,
              ),
              const TransparentButton(
                buttonText: "Forgot Password?",
                color: ColorPallete.terracota,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                routeDestination: SignIn(),
              ),
              const SizedBox(
                height: 24,
              ),
              MultiPurposeButton(
                buttonColor: ColorPallete.white,
                textColor: ColorPallete.black,
                textWeight: FontWeight.w500,
                buttonText: "Continue with Google",
                buttonHeight: 59,
                radius: 10,
                routeDestination: const SignIn(),
                iconPath: 'assets/image/others/google_logo.png',
                iconWidth: 24,
                iconHeight: 24,
                hasShadow: true,
                shadows: [
                  BoxShadow(
                    color: ColorPallete.black.withOpacity(0.08),
                    blurRadius: 3,
                    offset: const Offset(0, 0),
                  ),
                  BoxShadow(
                    color: ColorPallete.black.withOpacity(0.17),
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have an account? ",
                    style: TextStyle(
                      color: ColorPallete.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  TransparentButton(
                    buttonText: "Sign Up",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorPallete.terracota,
                    routeDestination: SignUp(),
                  )
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
