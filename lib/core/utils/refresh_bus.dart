import 'package:flutter/foundation.dart';

class RefreshBus {
  RefreshBus._();

  static final ValueNotifier<int> productsTick = ValueNotifier<int>(0);

  static void pingProducts() {
    productsTick.value = productsTick.value + 1;
  }
}
