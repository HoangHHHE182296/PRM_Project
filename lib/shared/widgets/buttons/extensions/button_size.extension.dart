import 'package:flutter/material.dart';
import '../enums/button_size.enum.dart';

extension ButtonSizeExtension on ButtonSize {
  double get height {
    switch (this) {
      case ButtonSize.small:
        return 32;
      case ButtonSize.normal:
        return 40;
      case ButtonSize.large:
        return 48;
    }
  }

  EdgeInsets get padding {
    switch (this) {
      case ButtonSize.small:
        return EdgeInsets.symmetric(horizontal: 12);
      case ButtonSize.normal:
        return EdgeInsets.symmetric(horizontal: 16);
      case ButtonSize.large:
        return EdgeInsets.symmetric(horizontal: 20);
    }
  }

  double get fontSize {
    switch (this) {
      case ButtonSize.small:
        return 12;
      case ButtonSize.normal:
        return 14;
      case ButtonSize.large:
        return 16;
    }
  }
}
