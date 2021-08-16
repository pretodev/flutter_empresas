import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverlayManager {
  static void add(
    OverlayEntry entry, {
    OverlayEntry? below,
    OverlayEntry? above,
  }) {
    OverlayState? overlay = Overlay.of(Get.context!);
    overlay?.insert(entry, below: below, above: above);
  }
}
