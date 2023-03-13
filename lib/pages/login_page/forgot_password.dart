import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/constant/app_textstyle.dart';
import '../../common/widgets/button/custom_elevated_button.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => ForgotPassState();
}

class ForgotPassState extends State<ForgotPass> {
  bool isChecked = false;

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
                    'Forgot Password ?',
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
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_iphone_outlined),
                      focusColor: Colors.black,
                      fillColor: Colors.black,
                      // hintText: "Enter your Phone",
                      // labelText: " Phone",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: <TextInputFormatter>[
                      // FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    btnColor: Colors.blue,
                    txtColor: Colors.white,
                    txtLabel: "Send",
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
