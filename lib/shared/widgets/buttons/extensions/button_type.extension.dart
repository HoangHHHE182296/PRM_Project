import 'package:flutter/material.dart';
import '../../../theme/app_colors.dart';
import '../enums/button_type.enum.dart';

extension ButtonTypeExtension on ButtonType {
  Color get color {
    switch (this) {
      case ButtonType.primary:
        return AppColors.primary;
      case ButtonType.secondary:
        return AppColors.textLight;
      case ButtonType.success:
        return AppColors.success;
      case ButtonType.warning:
        return AppColors.warning;
      case ButtonType.error:
        return AppColors.error;
      case ButtonType.info:
        return AppColors.info;
    }
  }
}
