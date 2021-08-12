import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../shared/theme/ioasys_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ioasys empresas',
      theme: IoasysTheme.primary(context),
    ).modular();
  }
}
