import 'package:flutter/material.dart';

import '../../common/constant/app_textstyle.dart';
import '../../common/widgets/button/custom_elevated_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF1D1D1D),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 100, right: 20),
            child: Column(
              children: [
                Text(
                  'Create\nYour acoount',
                  style: AppTextStyle.headline3M(txtColor: Colors.white),
                ),
                const SizedBox(
                  height: 70,
                ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    hintText: "Enter your Name",
                    labelText: " Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    hintText: "Enter your email",
                    labelText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    hintText: "Enter your Password",
                    labelText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                CheckboxListTile(
                  value: isChecked,
                  title: Text(
                    "By signing up you agree to the terms of service and privacy policy",
                    style: AppTextStyle.bodyM(txtColor: Colors.grey),
                  ),
                  onChanged: (newBool) {
                    setState(
                      () {
                        isChecked = newBool!;
                      },
                    );
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomElevatedButton( 
                  btnColor: Colors.blue,
                  txtLabel: 'Sign Up',
                  txtColor: Colors.white,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomElevatedButton(
                  btnColor: Colors.blue,
                  icons: Icons.facebook,
                  txtLabel: 'Sign Up With Facebook',
                  txtColor: Colors.white,
                ),
                // SizedBox(
                //   height: 130,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Don't have an account ? ",
                //       style: AppTextStyle.bodyM(txtColor: Colors.grey),
                //     ),
                //     Column(
                //       children: [
                //         TextButton(
                //           onPressed: () {},
                //           child: Text(
                //             'Sign-Up',
                //             style: AppTextStyle.bodyM(txtColor: Colors.grey),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonOnLoginScreen extends StatelessWidget {
  final String? title;
  final Color? buttonBgColor;
  final Color? textColor;

  const ButtonOnLoginScreen({
    super.key,
    this.title,
    this.buttonBgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: MediaQuery.of(context).size.width / 0.2,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title!,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
