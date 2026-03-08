import 'package:flutter/material.dart';
import '../enums/field_size.enum.dart';

extension FieldSizeExtension on FieldSize {
  double get height {
    switch (this) {
      case FieldSize.small:
        return 32;
      case FieldSize.normal:
        return 40;
      case FieldSize.large:
        return 48;
    }
  }

  EdgeInsets get contentPadding {
    switch (this) {
      case FieldSize.small:
        return const EdgeInsets.symmetric(vertical: 4, horizontal: 12);
      case FieldSize.normal:
        return const EdgeInsets.symmetric(vertical: 6, horizontal: 16);
      case FieldSize.large:
        return const EdgeInsets.symmetric(vertical: 8, horizontal: 16);
    }
  }

  double get fontSize {
    switch (this) {
      case FieldSize.small:
        return 12;
      case FieldSize.normal:
        return 14;
      case FieldSize.large:
        return 16;
    }
  }

  double get iconBoxWidth {
    switch (this) {
      case FieldSize.small:
        return 36;
      case FieldSize.normal:
        return 44;
      case FieldSize.large:
        return 48;
    }
  }

  double get iconSize {
    switch (this) {
      case FieldSize.small:
        return 16;
      case FieldSize.normal:
        return 20;
      case FieldSize.large:
        return 24;
    }
  }
}
