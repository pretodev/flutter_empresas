import '../components/ioasys_loading.dart';
import 'package:flutter/material.dart';

class OverlayLoading {
  static final overlay = OverlayEntry(
    builder: (_) => Container(
      color: Colors.black.withOpacity(0.4),
      alignment: Alignment.center,
      child: IoasysLoading(),
    ),
  );

  static void show(BuildContext context) {
    Overlay.of(context)!.insert(overlay);
  }

  static void hide() {
    overlay.remove();
  }
}
