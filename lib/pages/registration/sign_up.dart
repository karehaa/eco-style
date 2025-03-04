import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/data/models/sign_up_req_parameter.dart';
import 'package:eco_style/domain/usecases/sign_up.dart';
import 'package:eco_style/service_locator.dart';
import 'package:eco_style/widgets/multi_purpose_button.dart';
import 'package:eco_style/widgets/non_visible_field.dart';
import 'package:eco_style/widgets/transparent_button.dart';
import 'package:eco_style/widgets/visible_field.dart';
import 'package:eco_style/pages/registration/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content:
              Text(message, style: const TextStyle(color: ColorPallete.white)),
          backgroundColor: Colors.red),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeigth = mediaQuery.size.height;
    final double padding = screenWidth * 0.06;
    final double spacing = screenHeigth * 0.02;

    return Scaffold(
      backgroundColor: ColorPallete.white,
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
              "Register User",
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
                      SizedBox(
                        height: spacing * 1.5,
                      ),
                      const Text(
                        "Welcome to EcoStyle!",
                        style: TextStyle(
                          color: ColorPallete.terracota,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(
                        height: spacing * 1.5,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Your Name",
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
                        controller: usernameController,
                        labelText: "Input your First Name",
                      ),
                      SizedBox(
                        height: spacing,
                      ),
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
                      SizedBox(
                        height: spacing,
                      ),
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
                      SizedBox(
                        height: spacing,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Confirm Password",
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
                        controller: confirmPasswordController,
                        labelText: "Input confirm password",
                      ),
                      SizedBox(
                        height: spacing * 1.5,
                      ),
                      MultiPurposeButton(
                        buttonText: "Sign up",
                        buttonColor: ColorPallete.terracota,
                        textColor: ColorPallete.white,
                        textWeight: FontWeight.w600,
                        radius: 8,
                        hasIcon: false,
                        forRoute: false,
                        function: () {
                          if (confirmPasswordController.text.isEmpty ||
                              passwordController.text.isEmpty ||
                              emailController.text.isEmpty ||
                              usernameController.text.isEmpty) {
                            showErrorMessage("All fields are required.");
                          } else if (confirmPasswordController.text !=
                              passwordController.text) {
                            showErrorMessage(
                                "Password do not match. Please try again.");
                          } else {
                            sl<SignUpUseCase>().call(
                              param: SignUpReqParameter(
                                email: emailController.text,
                                password: passwordController.text,
                                username: usernameController.text,
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(
                        height: spacing * 1.5,
                      ),
                      const Text(
                        "Or sign up with",
                        style: TextStyle(
                          color: ColorPallete.darkGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(
                        height: spacing * 1.5,
                      ),
                      MultiPurposeButton(
                        buttonColor: ColorPallete.white,
                        textColor: ColorPallete.black,
                        textWeight: FontWeight.w500,
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
                      SizedBox(
                        height: spacing * 1.5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: ColorPallete.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                          TransparentButton(
                            buttonText: "Sign In",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: ColorPallete.terracota,
                            routeDestination: SignIn(),
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
