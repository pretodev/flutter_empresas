import 'package:empresas_flutter/app/data/models/company.dart';
import 'package:empresas_flutter/app/utils/choose_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyView extends StatelessWidget {
  const CompanyView({Key? key, required this.company, required this.onClicked})
      : super(key: key);

  final Company company;
  final void Function(Company company) onClicked;

  @override
  Widget build(BuildContext context) {
    final nameStyle = GoogleFonts.rubik().copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
      color: Colors.white,
    );
    final color = chooseColor(company.id);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 16.0, right: 16.0),
      child: InkWell(
        child: Container(
          height: 120.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Text(
            company.name,
            style: nameStyle,
          ),
        ),
        onTap: () => onClicked(company),
      ),
    );
  }
}
