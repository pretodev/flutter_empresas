import 'package:empresas_flutter/app/theme/ioasys_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Field extends StatelessWidget {
  final String labelText;
  final Widget child;

  const Field({
    Key? key,
    required this.labelText,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final labelStyle = GoogleFonts.rubik().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: IoasysColors.inputTxt,
    );
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0, left: 4.0),
            child: Text(
              labelText,
              style: labelStyle,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
