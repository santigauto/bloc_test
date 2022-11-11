import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool isMultiline;
  final Widget? icon;
  final TextInputType? inputType;
  const CustomInput(
      {Key? key,
      required this.controller,
      required this.label,
      required this.hint,
      this.validator,
      this.onChanged,
      this.isMultiline = false,
      this.icon, this.inputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: inputType,
        controller: controller,
        onChanged: onChanged,
        maxLines: isMultiline ? 2 : 1,
        validator: validator,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          labelText: label,
          hintText: hint,
          suffixIcon:
              Padding(padding: const EdgeInsets.only(top: 10), child: icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
        ),
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    );
  }
}