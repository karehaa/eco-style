import 'package:eco_style/core/configs/themes/color_pallete.dart';
import 'package:flutter/material.dart';

class LocationDropDown extends StatefulWidget {
  const LocationDropDown({super.key});

  @override
  State<LocationDropDown> createState() => _LocationDropDownState();
}

class _LocationDropDownState extends State<LocationDropDown> {
  String selectedLocation = "Kota Malang, Indonesia";
  final List<String> locations = [
    "Kota Malang, Indonesia",
    "Jakarta, Indonesia",
    "Surabaya, Indonesia",
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        iconEnabledColor: ColorPallete.black,
        value: selectedLocation,
        underline: const SizedBox(),
        items: locations.map((String location) {
          return DropdownMenuItem<String>(
            value: location,
            child: Text(
              location,
              style: const TextStyle(
                color: ColorPallete.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
              ),
            ),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            selectedLocation = newValue!;
          });
        });
  }
}
