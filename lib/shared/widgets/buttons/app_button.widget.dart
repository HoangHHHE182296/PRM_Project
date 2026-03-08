import 'package:flutter/material.dart';
import 'enums/button_mode.enum.dart';
import 'enums/button_size.enum.dart';
import 'enums/button_type.enum.dart';
import 'extensions/button_size.extension.dart';
import 'extensions/button_type.extension.dart';

export 'enums/button_mode.enum.dart';
export 'enums/button_size.enum.dart';
export 'enums/button_type.enum.dart';

class AppButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonMode mode;
  final ButtonType type;
  final ButtonSize size;
  final IconData? icon;
  final Widget? customPrefix;
  final bool isLoading;
  final bool isFullWidth;
  final bool isDisabled;

  const AppButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    this.mode = ButtonMode.filled,
    this.type = ButtonType.primary,
    this.size = ButtonSize.normal,
    this.icon,
    this.customPrefix,
    this.isLoading = false,
    this.isFullWidth = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveOnPressed = (isDisabled || isLoading) ? null : onPressed;

    Widget buttonContent = Row(
      mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading)
          Container(
            width: size.fontSize + 2,
            height: size.fontSize + 2,
            margin: const EdgeInsets.only(right: 8),
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(_getTextColor()),
            ),
          )
        else if (icon != null)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(icon, size: size.fontSize + 4, color: _getTextColor()),
          )
        else if (customPrefix != null)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: customPrefix,
          ),
        Flexible(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size.fontSize,
              fontWeight: FontWeight.w600,
              color: _getTextColor(),
            ),
          ),
        ),
      ],
    );

    ButtonStyle style;
    switch (mode) {
      case ButtonMode.filled:
        style = ElevatedButton.styleFrom(
          backgroundColor: type.color,
          foregroundColor: Colors.white,
          disabledBackgroundColor: type.color.withValues(alpha: 0.5),
          disabledForegroundColor: Colors.white.withValues(alpha: 0.8),
          elevation: 0,
          padding: size.padding,
          minimumSize: Size(isFullWidth ? double.infinity : 0, size.height),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
        return ElevatedButton(
          onPressed: effectiveOnPressed,
          style: style,
          child: buttonContent,
        );
      case ButtonMode.outline:
        style = OutlinedButton.styleFrom(
          foregroundColor: type.color,
          disabledForegroundColor: type.color.withValues(alpha: 0.5),
          side: BorderSide(
            color: (isDisabled || isLoading)
                ? type.color.withValues(alpha: 0.5)
                : type.color,
            width: 1.5,
          ),
          padding: size.padding,
          minimumSize: Size(isFullWidth ? double.infinity : 0, size.height),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
        return OutlinedButton(
          onPressed: effectiveOnPressed,
          style: style,
          child: buttonContent,
        );
      case ButtonMode.text:
        style = TextButton.styleFrom(
          foregroundColor: type.color,
          disabledForegroundColor: type.color.withValues(alpha: 0.5),
          padding: size.padding,
          minimumSize: Size(isFullWidth ? double.infinity : 0, size.height),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
        return TextButton(
          onPressed: effectiveOnPressed,
          style: style,
          child: buttonContent,
        );
    }
  }

  Color _getTextColor() {
    if (mode == ButtonMode.filled) {
      return Colors.white;
    }
    return type.color;
  }
}
