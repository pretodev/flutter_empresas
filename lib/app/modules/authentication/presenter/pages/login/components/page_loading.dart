import '../../../../../../../shared/components/ioasys_loading.dart';
import 'package:flutter/material.dart';

class LoginLoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      alignment: Alignment.center,
      child: IoasysLoading(),
    );
  }
}
