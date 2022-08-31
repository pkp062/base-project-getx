import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../style/color_constants.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {Key? key,
      this.controller,
      this.labelText,
      this.validator,
      this.hintText,
      this.callback,
      this.length,
      this.isObscureText,
      this.passwordButton,
      required this.inputType,
      this.enabled,
      this.inputFormatters,
      this.autovalidateMode,
      this.onChanged})
      : super(key: key);

  final TextEditingController? controller;
  final String? labelText;
  final int? length;
  final String? Function(String?)? validator;
  final VoidCallback? callback;
  final bool? isObscureText;
  final String? hintText;
  final Widget? passwordButton;
  final TextInputType inputType;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  bool? enabled = true;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      inputFormatters: inputFormatters,
      controller: controller,
      maxLength: length,
      validator: validator,
      obscureText: isObscureText!,
      enabled: enabled,
      style: const TextStyle(
        color: ColorConstants.black,
        fontSize: 16,
      ),
      keyboardType: inputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.white,
        suffixIcon: passwordButton,
        labelText: labelText,
        contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: ColorConstants.gray70, width: 2)),
        hintText: hintText,
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: ColorConstants.red, width: 2)),
        hintStyle: const TextStyle(color: ColorConstants.grayA5),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: ColorConstants.gray70, width: 2)),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: ColorConstants.gray70, width: 2)),
      ),
    );
  }
}
