import 'package:flutter/material.dart';
import 'package:flutter_project_n8/utils/my_colors.dart';

class CustomTextfield extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool? obscureText;
  final TextInputType keyboardType; 
  final VoidCallback? onPressed;
  final TextEditingController controller;

  const CustomTextfield({
    super.key, 
    required this.text, 
    required this.icon, 
    this.obscureText,
    this.keyboardType = TextInputType.text, 
    this.onPressed,
    required this.controller 
  }) ;

  @override
  Widget build(BuildContext context) {

    bool showPassword = !(obscureText != null ? obscureText! : false);

    return TextFormField(
      controller: controller,
      obscureText: !showPassword && obscureText != null,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(
          color: Colors.grey
        ),
        prefixIcon: Icon(icon),
        prefixIconColor: MyColors.purpleColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.pinkColor,
            width: 2.0
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.pinkColor,
            width: 2.0
          ),
          borderRadius: BorderRadius.circular(15),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          showPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          size: obscureText != null ? 20 : 0),
        onPressed: onPressed,
        ),
      ),
    );
  }
}