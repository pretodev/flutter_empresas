import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleStyle = GoogleFonts.rubik(
      fontWeight: FontWeight.w400,
      fontSize: 20.0,
      color: Colors.white,
    );
    return Container(
      height: 225.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/login_bg.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(
                  image: AssetImage('assets/images/logo_home2.png'),
                  height: 32.0,
                ),
              ),
              Text(
                'Seja bem vindo ao empresas!',
                style: titleStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
