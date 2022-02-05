// Simple
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:this_is_november_blog/constants/constants.dart';

TextStyle headlineTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 26,
        color: kPrimaryColorText,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w300));

TextStyle headlineSecondaryTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 20, color: kPrimaryColorText, fontWeight: FontWeight.w300));

TextStyle subtitleTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
        fontSize: 14, color: kSecondaryColorText, letterSpacing: 1));

TextStyle bodyTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(fontSize: 14, color: kPrimaryColorText));

TextStyle buttonTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 14, color: kPrimaryColorText, letterSpacing: 1));
