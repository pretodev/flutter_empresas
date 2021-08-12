import '../../../../../../../shared/theme/ioasys_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, this.message = ''}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    final messageStyle = GoogleFonts.rubik().copyWith(
      color: IoasysColors.error,
      fontWeight: FontWeight.w300,
      fontSize: 12.0,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(message, style: messageStyle),
        ],
      ),
    );
  }
}
