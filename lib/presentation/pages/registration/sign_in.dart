import 'package:eco_style/presentation/pages/onboarding/onboarding3.dart';
import 'package:eco_style/presentation/pages/registration/forgot_password.dart';
import 'package:eco_style/presentation/pages/registration/sign_up.dart';
import 'package:eco_style/presentation/pages/shop/home_page.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/presentation/widgets/multi_purpose_button.dart';
import 'package:eco_style/presentation/widgets/non_visible_field.dart';
import 'package:eco_style/presentation/widgets/transparent_button.dart';
import 'package:eco_style/presentation/widgets/visible_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
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
                  builder: (context) => const Onboarding3(),
                ),
              ),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: ColorPallete.white,
            ),
            title: const Text(
              "Login",
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
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: spacing * 3),
                      const Text(
                        "Welcome Back!",
                        style: TextStyle(
                          color: ColorPallete.terracota,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
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
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      SizedBox(height: spacing * 0.8),
                      VisibleField(
                        controller: emailController,
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
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      SizedBox(height: spacing * 0.8),
                      NonVisibleField(
                        controller: passwordController,
                        labelText: "Input your password",
                      ),
                      SizedBox(height: spacing * 1.5),
                      const MultiPurposeButton(
                        buttonText: "Login",
                        buttonColor: ColorPallete.terracota,
                        textColor: ColorPallete.white,
                        textWeight: FontWeight.w700,
                        radius: 8,
                        routeDestination: HomePage(),
                        hasIcon: false,
                      ),
                      SizedBox(height: spacing * 1.5),
                      const TransparentButton(
                        buttonText: "Forgot Password?",
                        color: ColorPallete.terracota,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        routeDestination: ForgotPassword(),
                      ),
                      SizedBox(height: spacing * 1.5),
                      MultiPurposeButton(
                        buttonColor: ColorPallete.white,
                        textColor: ColorPallete.black,
                        textWeight: FontWeight.w400,
                        buttonText: "Continue with Google",
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
                              fontFamily: 'Inter',
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
