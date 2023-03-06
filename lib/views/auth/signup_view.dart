import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopease/views/auth/signin_view.dart';
import 'package:shopease/home.dart';
import 'package:shopease/widgets/custom_btn.dart';
import 'package:shopease/widgets/custom_text_field.dart';

import '../../constants/strings.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),

                // Sign up text
                const Text(
                  signupText,
                  style: TextStyle(fontSize: 45, fontFamily: "SF Heavy"),
                ),

                // Name text field
                const SizedBox(height: 60),
                const CustomTextField(hintText: "Name"),

                // Email Text Field
                const SizedBox(height: 10),
                const CustomTextField(hintText: "Email"),

                // Password Text Field
                const SizedBox(height: 10),
                const CustomTextField(hintText: "Password"),

                // already have an account
                const SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Get.to(() => const SignInView());
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

                // Sign up btn
                const SizedBox(height: 30),
                CustomButton(
                  btnText: "SIGN UP",
                  onTap: () {
                    Get.off(() => const Home());
                  },
                ),

                // Or sign up with social account
                const SizedBox(height: 80),
                const Spacer(),

                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or sign up with social account",
                    style: TextStyle(
                      fontFamily: "SF Light",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Google facebook login
                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      height: 60,
                      width: 60,
                      child: const Center(
                        child: Image(
                          image: AssetImage("assets/icons/google.png"),
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8)),
                      height: 60,
                      width: 60,
                      child: const Center(
                        child: Image(
                          image: AssetImage("assets/icons/facebook.png"),
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
