import 'package:empresas_flutter/app/theme/ioasys_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsCountView extends StatelessWidget {
  const ResultsCountView({
    Key? key,
    required this.countResults,
  }) : super(key: key);

  final int countResults;

  @override
  Widget build(BuildContext context) {
    final resultsStyle = GoogleFonts.rubik().copyWith(
      fontWeight: FontWeight.w300,
      fontSize: 14.0,
      color: IoasysColors.inputTxt,
    );
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '$countResults resultados encontrados',
        style: resultsStyle,
      ),
    );
  }
}
