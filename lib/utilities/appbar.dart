import 'package:flutter/material.dart';
import 'package:taska/utilities/colors.dart';

PreferredSizeWidget? getAppbar() {
  
  return AppBar(
    
    elevation: 0,
    backgroundColor: whiteTextColor,
    iconTheme: IconThemeData(
      color: primaryColor,
    ),

  );
}
