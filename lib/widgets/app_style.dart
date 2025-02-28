import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appStyle(double size,Color colour,FontWeight fw){
  return GoogleFonts.poppins(fontSize: size,color: colour,fontWeight: fw);
}

TextStyle appStyleWitHt(double size,double h,Color colour,FontWeight fw){
  return GoogleFonts.poppins(fontSize: size,height: h,color: colour,fontWeight: fw);
}