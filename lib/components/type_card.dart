import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/classes/type.dart';

class TypeCard extends StatelessWidget {
  final PokemonType type;

  const TypeCard({Key? key, required this.type});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.15,
      height: size.width * 0.06,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: type.colors.accent, borderRadius: BorderRadius.circular(4.25)),
      child: Text(type.name,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: size.width * 0.03,
          )),
    );
  }
}
