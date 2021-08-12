import '../../../../../../../shared/theme/ioasys_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoResultsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final noResultsStyle = GoogleFonts.rubik().copyWith(
      fontWeight: FontWeight.w300,
      fontSize: 18.0,
      color: IoasysColors.inputTxt,
    );
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Nenhum resultado encontrado',
        style: noResultsStyle,
      ),
    );
  }
}
