// 🐦 Flutter imports:
import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  bool get isScreenWide {
    final mediaQuery = MediaQuery.of(this);
    return mediaQuery.size.width >= 800;
  }
}
