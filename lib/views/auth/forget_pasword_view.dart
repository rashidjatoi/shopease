import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopease/constants/strings.dart';
import 'package:shopease/views/auth/signup_view.dart';
import 'package:shopease/widgets/custom_btn.dart';
import 'package:shopease/widgets/custom_text_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120),

              // Sign up text
              const Text(
                forgetPassword,
                style: TextStyle(fontSize: 35, fontFamily: "SF Heavy"),
              ),
              const SizedBox(height: 80),

              const Text(
                "Please, enter your email address. You will receive a link to create a new password via email.",
                style: TextStyle(
                  fontFamily: "SF Light",
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),

              // Email Text Field
              const SizedBox(height: 20),
              const CustomTextField(hintText: "Email"),

              const // Sign up btn
              SizedBox(height: 80),
              CustomButton(
                btnText: "SEND",
                onTap: () {},
              ),

              // already have an account
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Get.to(() => const SignUpView());
                  },
                  child: SizedBox(
                    width: 190,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Already have an Account?",
                          style: TextStyle(
                            fontFamily: "SF Light",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Image(image: AssetImage("assets/icons/arrow.png"))
                      ],
                    ),
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
