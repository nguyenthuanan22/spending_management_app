import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spending_management_app/view/login/sign_up_view.dart';

import '../../common/colors.dart';
import '../../widget/secondary_button.dart';

class SocialLoginView extends StatefulWidget {
  const SocialLoginView({super.key});

  @override
  State<SocialLoginView> createState() => _SocialLoginViewState();
}

class _SocialLoginViewState extends State<SocialLoginView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size; // Kích thước màn hình
    return Scaffold(
      backgroundColor: TColor.backgroundeneralColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: media.height * 0.02, // Tỷ lệ padding theo chiều cao
            horizontal: media.width * 0.05, // Tỷ lệ padding theo chiều rộng
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo ứng dụng
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * 0.5, // Đặt tỷ lệ chiều rộng
                fit: BoxFit.contain,
              ),
              SizedBox(height: media.height * 0.02), // Khoảng cách động

              // Nút Google
              InkWell(
                onTap: () {},
                child: Container(
                  height: media.height * 0.07, // Chiều cao động
                  decoration: BoxDecoration(
                    color: TColor.googleButtonBackground,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.google, color: TColor.white, size: 18),
                      SizedBox(width: 8),
                      Text(
                        "Sign up with Google",
                        style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: media.height * 0.02),
              // Nút Facebook
              InkWell(
                onTap: () {},
                child: Container(
                  height: media.height * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.35),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: TColor.white, size: 18),
                      const SizedBox(width: 8),
                      Text(
                        "Sign up with Facebook",
                        style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: media.height * 0.15), // Khoảng cách động

              // Dòng thông báo Terms of Use
              const Text(
                "Do you have already an acount?",
                textAlign: TextAlign.center,
                style: TextStyle(color: TColor.white, fontSize: 14),
              ),

              SizedBox(height: media.height * 0.02),

              SecondaryButton(
                title: "Sign up with E-mail",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpView()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
