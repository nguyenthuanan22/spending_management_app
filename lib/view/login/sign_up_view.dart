import 'package:flutter/material.dart';
import 'package:spending_management_app/view/login/sign_in_view.dart';

import '../../common/colors.dart';
import '../../widget/primary_button.dart';
import '../../widget/round_textfield.dart';
import '../../widget/secondary_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    double screenHeight = media.size.height;
    double screenWidth = media.size.width;

    return Scaffold(
      backgroundColor: TColor.backgroundeneralColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.02,
            horizontal: screenWidth * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                "assets/img/app_logo.png",
                width: screenWidth * 0.35,
                fit: BoxFit.contain,
              ),

              // Email and Password Fields
              RoundTextField(
                title: "E-mail address",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: screenHeight * 0.02),
              RoundTextField(
                title: "Password",
                controller: txtPassword,
                obscureText: true,
              ),
              SizedBox(height: screenHeight * 0.03),

              // Progress Indicators
              Row(
                children: List.generate(
                  4,
                      (index) => Expanded(
                    child: Container(
                      height: screenHeight * 0.005,
                      margin: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.005,
                      ),
                      decoration: BoxDecoration(
                        color: TColor.gray70,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              // Instruction Text
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Use 8 or more characters with a mix of letters,\nnumbers & symbols.",
                    style: TextStyle(
                      color: TColor.gray50,
                      fontSize: screenHeight * 0.015,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),

              // Primary Button
              PrimaryButton(
                title: "Get started, it's free!",
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SocialLoginView(),
                  //   ),
                  // );
                },
              ),
              Spacer(),

              // Secondary Section
              Text(
                "Do you have already an account?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: screenHeight * 0.018,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SecondaryButton(
                title: "Sign in",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInView(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
