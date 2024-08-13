import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/style.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {super.key,
      this.borderColor,
      this.controller,
      this.errorText,
      this.focusNode,
      this.focusNodeList,
      this.helperText,
      this.hintText,
      this.obscureText,
      this.keyboardType,
      this.labelText,
      this.maxLines,
      this.horizontalPadding,
      this.verticalPadding,
      this.onChanged,
      this.prefixIcon,
      this.readOnly,
      this.suffixIcon,
      this.validator,
      this.textInputAction,
      this.suffixIconTapped});

  final Color? borderColor;
  final TextEditingController? controller;
  final String? errorText;
  final FocusNode? focusNode;
  final List<FocusNode>? focusNodeList;
  final String? helperText;
  final String? hintText;
  final int? maxLines;
  final double? horizontalPadding;
  final double? verticalPadding;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? labelText;
  final Icon? prefixIcon;
  final bool? readOnly;
  final Icon? suffixIcon;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final VoidCallback? suffixIconTapped;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
          iconColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.focused)) {
              return cPlaceholder;
            }
            if (states.contains(MaterialState.error)) {
              return Colors.red;
            }
            return cPlaceholder;
          }),
        ),
      ),
      child: TextFormField(
        maxLines: maxLines,
        cursorColor: cText,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: verticalPadding ?? 10,
              horizontal: horizontalPadding ?? 5),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: cPlaceholder,
            ),
          ),
          errorText: errorText,
          // focusColor: cText,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14.0, color: cPlaceholder, fontWeight: FontWeight.w300),
          prefixIcon: prefixIcon,
          suffixIcon: GestureDetector(
            onTap: suffixIconTapped,
            child: suffixIcon ?? const SizedBox(),
          ),
        ),
        focusNode: focusNode,
        keyboardType: keyboardType ?? TextInputType.name,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        // onSaved: (value) {},
        readOnly: null == readOnly ? false : true,
        style:
            TextStyle(color: cText, fontWeight: FontWeight.w400, fontSize: 14),
        textInputAction: textInputAction,
        validator: validator,
      ),
    );
  }
}
