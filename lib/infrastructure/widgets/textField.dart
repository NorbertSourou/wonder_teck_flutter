import 'package:flutter/material.dart';

class StyledTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;
  final IconData prefixIcon;
  final TextEditingController controller;

  const StyledTextField({
    Key? key,
    this.labelText = "",
    this.hintText = "",
    this.isPassword = false,
    required this.prefixIcon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        style: TextStyle(fontSize: 16, color: Colors.black),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: Color(0xFFF0F0F0),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black87, fontSize: 16),
          prefixIcon: Icon(prefixIcon, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none, // Remove default borders
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                    // Ajouter la logique pour afficher/cacher le mot de passe
                  },
                )
              : null,
        ),
      ),
    );
  }
}
