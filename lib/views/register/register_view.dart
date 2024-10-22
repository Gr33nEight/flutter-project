import 'package:flutter/material.dart';
import 'package:flutter_project_n8/components/custom_textfield.dart';
import 'package:flutter_project_n8/utils/my_colors.dart';
import 'package:flutter_project_n8/utils/my_images.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
 
  bool obscureTextPassword = true;
  bool obscureTextConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                children: [
                  Icon(Icons.chevron_left, color: MyColors.purpleColor),
                  Text("Back", style: TextStyle(color: MyColors.purpleColor, fontSize: 12))
                ]),
              ),
            ),
                          
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: MyColors.purpleColor),
              ),
            ),
            CustomTextfield(
              text: "Full Name",
              icon: Icons.person_outline,
              controller: _fullName
            ),
            CustomTextfield(
              text: "Email",
              icon: Icons.mail_outline,
              controller: _emailController
            ),
            CustomTextfield(
              text: "Password",
              icon: Icons.lock_outline,
              controller: _passwordController,
              obscureText: obscureTextPassword,
              onPressed: () => {
                setState(() {
                  obscureTextPassword = !obscureTextPassword;
                })
              },
            ),
            CustomTextfield(
              text: "Confirm Password",
              icon: Icons.lock_outline,
              controller: _confirmPasswordController,
              obscureText: obscureTextConfirm,
              onPressed: () => {
                setState(() {
                  obscureTextConfirm = !obscureTextConfirm;
                })
              },
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: MyColors.pinkColor
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: MyColors.whiteColor, fontSize: 15, fontWeight: FontWeight.w700),
                ),
              )
            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: MyColors.purpleColor,  fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: MyColors.purpleColor,  fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(MyImages.signUpImg)
        )
        ],
      )
    );
  }
}