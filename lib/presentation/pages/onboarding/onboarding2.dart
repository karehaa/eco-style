import 'package:eco_style/presentation/pages/onboarding/onboarding1.dart';
import 'package:eco_style/presentation/pages/onboarding/onboarding3.dart';
import 'package:eco_style/presentation/pages/registration/sign_in.dart';
import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:eco_style/presentation/widgets/multi_purpose_button.dart';
import 'package:eco_style/presentation/widgets/transparent_button.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/image/background_images/a_dude.jpg',
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: IconButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Onboarding1(),
                              ),
                            ),
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            color: ColorPallete.white,
                          ),
                        ),
                        const Spacer(),
                        const TransparentButton(
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
                    "Marketplace & RentWear",
                    style: TextStyle(
                      color: ColorPallete.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Buy & sell sustainable and preloved fashion. Rent outfits for any occasion from sustainable brands & other users.",
                      style: TextStyle(
                        color: ColorPallete.white.withOpacity(0.7),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/image/dots/dot_second.png',
                    width: 50,
                    height: 11.77,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MultiPurposeButton(
                    buttonText: "Continue",
                    textColor: ColorPallete.white,
                    textWeight: FontWeight.w500,
                    buttonColor: ColorPallete.terracota,
                    radius: 6,
                    routeDestination: Onboarding3(),
                    hasIcon: false,
                  ),
                ],
              )),
        )
      ],
    ));
  }
}
