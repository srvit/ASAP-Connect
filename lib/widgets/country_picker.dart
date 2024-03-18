import 'package:flutter/material.dart';

class CountryPickerWidget extends StatefulWidget {
  @override
  _CountryPickerWidgetState createState() => _CountryPickerWidgetState();
}

class _CountryPickerWidgetState extends State<CountryPickerWidget> {
  String selectedCountryCode = '+91'; // Initial country code

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Open country code picker
        // Implement your logic here to open the country code picker
      },
      child: Row(
        children: [
          // Mobile SVG Icon
          const Icon(
            Icons.phone_android, // You can replace this with your SVG icon
            color: Colors.black, // Icon color
          ),
          const SizedBox(width: 8),

          // Text showing the selected country code
          Text(
            selectedCountryCode,
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(width: 4),

          // Arrow down icon to indicate the dropdown
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
