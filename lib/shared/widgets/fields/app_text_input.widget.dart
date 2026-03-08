import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import 'enums/field_size.enum.dart';
import 'extensions/field_size.extension.dart';

class AppTextInputWidget extends StatefulWidget {
  final String label;
  final String hint;
  final IconData? prefixIcon;
  final bool showClear;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool isRequired;
  final FieldSize size;

  const AppTextInputWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.prefixIcon,
    this.showClear = false,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.isRequired = false,
    this.size = FieldSize.normal,
  });

  @override
  State<AppTextInputWidget> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<AppTextInputWidget> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: widget.label,
            style: const TextStyle(
              color: AppColors.textDark,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            children: widget.isRequired
                ? const [
                    TextSpan(
                      text: ' *',
                      style: TextStyle(color: AppColors.error),
                    ),
                  ]
                : [],
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          obscureText: widget.obscureText,
          keyboardType: widget.keyboardType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: TextStyle(
            fontSize: widget.size.fontSize,
            color: AppColors.textDark,
          ),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(color: AppColors.textHint),
            isDense: true,
            contentPadding: widget.size.contentPadding,
            prefixIcon: widget.prefixIcon != null
                ? Container(
                    margin: const EdgeInsets.only(right: 12),
                    width: widget.size.iconBoxWidth,
                    height: widget.size.height - 2,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      ),
                    ),
                    child: Icon(
                      widget.prefixIcon,
                      color: Colors.white,
                      size: widget.size.iconSize,
                    ),
                  )
                : null,
            prefixIconConstraints: widget.prefixIcon != null
                ? BoxConstraints(
                    minWidth: widget.size.iconBoxWidth + 12,
                    minHeight: widget.size.height - 2,
                    maxHeight: widget.size.height - 2,
                  )
                : null,
            suffixIcon:
                _buildSuffixIcon() ??
                SizedBox(width: 0, height: widget.size.height - 2),
            suffixIconConstraints: BoxConstraints(
              minHeight: widget.size.height - 2,
              maxHeight: widget.size.height - 2,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 1.5,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.error),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.error, width: 1.5),
            ),
            errorStyle: const TextStyle(color: AppColors.error, fontSize: 13),
          ),
          validator: widget.validator,
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon() {
    if (!widget.showClear && widget.suffixIcon == null) return null;

    final children = <Widget>[];

    if (widget.showClear) {
      children.add(
        ValueListenableBuilder<TextEditingValue>(
          valueListenable: widget.controller,
          builder: (context, value, child) {
            if (value.text.isNotEmpty) {
              return InkWell(
                onTap: () {
                  widget.controller.clear();
                },
                borderRadius: BorderRadius.circular(16),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.close,
                    color: AppColors.textHint,
                    size: widget.size.iconSize,
                  ),
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      );
    }

    if (widget.suffixIcon != null) {
      children.add(widget.suffixIcon!);
    }

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
