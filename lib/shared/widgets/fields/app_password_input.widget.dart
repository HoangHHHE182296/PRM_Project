import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import 'app_text_input.widget.dart';
import 'enums/field_size.enum.dart';
import 'extensions/field_size.extension.dart';

class AppPasswordInputWidget extends StatefulWidget {
  final String label;
  final String hint;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isRequired;
  final bool showClear;
  final FieldSize size;

  const AppPasswordInputWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.prefixIcon,
    this.validator,
    this.isRequired = false,
    this.showClear = false,
    this.size = FieldSize.normal,
  });

  @override
  State<AppPasswordInputWidget> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<AppPasswordInputWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextInputWidget(
      label: widget.label,
      hint: widget.hint,
      prefixIcon: widget.prefixIcon,
      controller: widget.controller,
      validator: widget.validator,
      isRequired: widget.isRequired,
      showClear: widget.showClear,
      size: widget.size,
      obscureText: _obscureText,
      suffixIcon: InkWell(
        onTap: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: AppColors.textHint,
            size: widget.size.iconSize,
          ),
        ),
      ),
    );
  }
}
