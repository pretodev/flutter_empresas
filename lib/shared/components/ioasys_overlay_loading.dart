import 'package:flutter/material.dart';

import 'ioasys_loading.dart';

class IoasysOverlayLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      alignment: Alignment.center,
      child: IoasysLoading(),
    );
  }
}
