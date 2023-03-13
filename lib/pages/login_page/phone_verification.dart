import 'package:flutter/material.dart';

import '../../common/constant/app_textstyle.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => Phone_VerificationState();
}

class Phone_VerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 100, right: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    "Enter the code\nto verify your phone number",
                    style: AppTextStyle.headline3M(txtColor: Colors.black),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "If you need help to resetting your password, we can"
                    "help by sending you a  link to reset it ",
                    style: AppTextStyle.bodyM(txtColor: Colors.grey),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
