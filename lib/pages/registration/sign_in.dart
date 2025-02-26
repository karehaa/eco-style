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
          onPressed: () {},
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
          child: const Column(
            children: [
              Spacer(),
              Text("Welcome Back!"),
              Spacer(),
              Align(
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
                labelText: "xxx@gmail.com",
              ),
              SizedBox(
                height: 14,
              ),
              Align(
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
              NonVisibleField(
                labelText: "Input your password",
              ),
              SizedBox(
                height: 24,
              ),
              MultiPurposeButton(
                buttonText: "Login",
                buttonHeight: 52,
                routeDestination: SignIn(),
              ),
              SizedBox(
                height: 24,
              ),
              TransparentButton(
                buttonText: "Forgot Password?",
                color: ColorPallete.terracota,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                routeDestination: SignIn(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
