import 'package:flutter/material.dart';

class CustomTextFeild extends StatefulWidget {
  final TextEditingController? textEditingController;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;
  final String label;
  final bool isPasswordField;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? enabled;
  final bool isSowPrefixcon;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final bool? filled;
  final Color? fillColor;
  final String? labelText;
  final int? maxLength;
  final int? errorMaxLines;
  final bool autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final int maxLines;
  final TextInputType? keyboardType;
  const CustomTextFeild(
      {super.key,
      this.errorMaxLines,
      this.fillColor,
      this.filled,
      this.contentPadding,
      this.autofocus = false,
      this.prefixIcon,
      this.keyboardType,
      this.sufixIcon,
      this.maxLength,
      this.enabled,
      this.maxLines = 1,
      this.textEditingController,
      this.onChange,
      required this.label,
      this.validator,
      this.isPasswordField = false,
      this.floatingLabelBehavior,
      this.labelText,
      this.isSowPrefixcon = false});
  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  bool isVisible = true;
  void visiblePassword() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (val) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      autofocus: widget.autofocus,
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      onChanged: widget.onChange,
      enabled: widget.enabled,
      validator: widget.validator,
      controller: widget.textEditingController,
      cursorColor: Colors.black,
      obscureText: widget.isPasswordField ? isVisible : false,
      style: TextStyle(fontSize: 14, fontFamily: "Futura", color: Colors.black),
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        filled: widget.filled,
        fillColor: widget.fillColor,
        errorMaxLines: widget.errorMaxLines,
        prefixIcon: widget.prefixIcon,
        contentPadding: widget.contentPadding ??
            const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        labelText: widget.labelText,
        floatingLabelBehavior: widget.floatingLabelBehavior,
        suffixIcon: widget.sufixIcon ??
            (widget.isPasswordField
                ? Padding(
                    padding: const EdgeInsets.all(5),
                    child: GestureDetector(
                        onTap: visiblePassword,
                        child: Icon(
                          isVisible ? Icons.visibility_off : Icons.visibility,
                          color: const Color(0xff475569),
                        )),
                  )
                : null),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: const Color(0xffD4D4D4).withValues(alpha: 0.50),
                width: 1)),
        hintText: widget.label,
        hintStyle: const TextStyle(
            fontSize: 14, fontFamily: "Futura", color: Color(0xff939E9F)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: const Color(0xffD4D4D4).withValues(alpha: 0.50),
                width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: const Color(0xffD4D4D4).withValues(alpha: 0.50),
                width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: const Color(0xffD4D4D4).withValues(alpha: 0.50),
                width: 1)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: const Color(0xffD4D4D4).withValues(alpha: 0.50),
                width: 1)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: const Color(0xffD4D4D4).withValues(alpha: 0.50),
                width: 1)),
      ),
    );
  }
}
