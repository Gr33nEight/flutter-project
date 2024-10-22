import 'package:flutter/material.dart';
import 'package:flutter_project_n8/components/custom_textfield.dart';
import 'package:flutter_project_n8/utils/my_colors.dart';
import 'package:flutter_project_n8/utils/my_images.dart';
import 'package:flutter_project_n8/views/register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(MyImages.logo, width: 129, height: 129),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign in',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: MyColors.purpleColor),
              ),
            ),
            const Spacer(),
            CustomTextfield(
              text: "Email or User Name",
              icon: Icons.person_outline,
              controller: _emailController
            ),
            const Spacer(),
            CustomTextfield(
              text: "Password",
              icon: Icons.lock_outline,
              controller: _passwordController,
              obscureText: obscureText,
              onPressed: () => {
                setState(() {
                  obscureText = !obscureText;
                })
              },
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text(
                  "Forget Password?",
                  style: TextStyle(color: MyColors.purpleColor,  fontSize: 15, fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
            ),
            const Spacer(),
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
                  "Sign in",
                  style: TextStyle(color: MyColors.whiteColor, fontSize: 15, fontWeight: FontWeight.w700),
                ),
              )
            ),
            const Spacer(),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account? ",
                    style: TextStyle(color: MyColors.purpleColor,  fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: MyColors.purpleColor,  fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterView()),
                );
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}