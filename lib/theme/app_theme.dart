import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF00B4D8); // Celeste vibrante
  static const Color secondaryColor = Color(0xFF90E0EF); // Celeste claro
  static const Color backgroundColor = Color(0xFFF3F4F6); // Gris súper claro casi blanco
  static const Color textColor = Color(0xFF1E1E1E); // Casi negro

  static ThemeData get theme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        background: backgroundColor,
      ),
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: textColor,
        displayColor: textColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: textColor),
        titleTextStyle: GoogleFonts.poppins(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // Estilo neumórfico (3D) para contenedores
  static BoxDecoration neumorphicDecoration = BoxDecoration(
    color: backgroundColor,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade300,
        offset: const Offset(5, 5),
        blurRadius: 15,
        spreadRadius: 1,
      ),
      const BoxShadow(
        color: Colors.white,
        offset: Offset(-5, -5),
        blurRadius: 15,
        spreadRadius: 1,
      ),
    ],
  );
}
