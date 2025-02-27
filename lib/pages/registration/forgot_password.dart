import 'package:eco_style/pages/registration/sign_in.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/widgets/multi_purpose_button.dart';
import 'package:eco_style/widgets/transparent_button.dart';
import 'package:eco_style/widgets/visible_field.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPassword();
}

class _ForgotPassword extends State<ForgotPassword> {
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
      backgroundColor: ColorPallete.white,
      appBar: AppBar(
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
          color: ColorPallete.terracota,
        ),
        title: const Text(
          "Forgot Password",
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
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: spacing * 5),
                      Image.asset(
                        'assets/image/others/lock_logo.png',
                        width: 51,
                        height: 64,
                      ),
                      SizedBox(height: spacing * 2),
                      const Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: ColorPallete.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: spacing * 1),
                      const Text(
                        "Masukkan email Anda yang terdaftar di bawah ini untuk menerima instruksi pengaturan ulang kata sandi",
                        style: TextStyle(
                          color: ColorPallete.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: spacing * 3),
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
                      VisibleField(
                        controller: emailController,
                        labelText: "Input email address",
                      ),
                      SizedBox(height: spacing * 1.5),
                      const MultiPurposeButton(
                        buttonText: "Send",
                        buttonColor: ColorPallete.terracota,
                        textColor: ColorPallete.white,
                        textWeight: FontWeight.w400,
                        buttonHeight: 52,
                        radius: 8,
                        routeDestination: ForgotPassword(),
                        hasIcon: false,
                      ),
                      SizedBox(height: spacing * 9),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Remember your password? ",
                            style: TextStyle(
                              color: ColorPallete.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          TransparentButton(
                            buttonText: "Login",
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
