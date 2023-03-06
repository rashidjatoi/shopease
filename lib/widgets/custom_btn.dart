import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.btnText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(color: Colors.orange),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onTap,
        child: Text(
          btnText,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "SF Heavy"),
        ),
      ),
    );
  }
}
