import 'package:eco_style/pages/onboarding/onboarding3.dart';
import 'package:eco_style/pages/registration/sign_up.dart';
import 'package:eco_style/pages/shop/shop.dart';
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
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final double padding = screenWidth * 0.06;
    final double spacing = screenHeight * 0.02;

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
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: spacing * 3),
                      const Text(
                        "Welcome Back!",
                        style: TextStyle(
                          color: ColorPallete.terracota,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: spacing * 2),
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
                      SizedBox(height: spacing * 0.8),
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
                      SizedBox(height: spacing * 1.5),
                      const MultiPurposeButton(
                        buttonText: "Login",
                        buttonColor: ColorPallete.terracota,
                        textColor: ColorPallete.white,
                        textWeight: FontWeight.w600,
                        buttonHeight: 52,
                        radius: 8,
                        routeDestination: Shop(),
                        hasIcon: false,
                      ),
                      SizedBox(height: spacing * 1.5),
                      const TransparentButton(
                        buttonText: "Forgot Password?",
                        color: ColorPallete.terracota,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        routeDestination: SignIn(),
                      ),
                      SizedBox(height: spacing * 3),
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
                      SizedBox(height: spacing * 2),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
