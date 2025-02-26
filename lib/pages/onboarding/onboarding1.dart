import 'package:eco_style/pages/onboarding/onboarding2.dart';
import 'package:eco_style/pages/registration/sign_in.dart';
import 'package:eco_style/themes/color_pallete.dart';
import 'package:eco_style/widgets/multi_purpose_button.dart';
import 'package:eco_style/widgets/transparent_button.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/image/background_images/lady_white_suit.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            color: ColorPallete.terracota.withOpacity(0.3),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorPallete.black.withOpacity(0),
                  ColorPallete.black.withOpacity(0.25),
                  ColorPallete.black.withOpacity(0.7),
                ],
                stops: const [0.0, 0.1, 1.0],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 36, bottom: 78.23),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(right: 28),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TransparentButton(
                          buttonText: "Skip",
                          color: ColorPallete.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          routeDestination: SignIn(),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Welcome to EcoStyle!",
                    style: TextStyle(
                      color: ColorPallete.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Text(
                      "Selamat datang di EcoStyle, platform sustainable fashion! Temukan cara mudah untuk beralih ke gaya hidup ramah lingkungan dengan fashion yang stylish.",
                      style: TextStyle(
                        color: ColorPallete.white.withOpacity(0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/image/dots/dot_first.png',
                    width: 50,
                    height: 11.77,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MultiPurposeButton(
                    buttonText: "Continue",
                    buttonHeight: 50,
                    routeDestination: Onboarding2(),
                  ),
                ],
              )),
        )
      ],
    ));
  }
}
