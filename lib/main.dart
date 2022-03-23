import 'package:flutter/material.dart';
import 'package:teknikalph_app/ui/login_page.dart';

void main(){
  runApp(
      const MaterialApp(
        title: "TeknikalPH App",
        home: LoginPage(),
      )
  );
}
// PALETTES TO BE USED:
// #B8D4ED
// #C76643
// #7E896B
// #700000

// Pa click, "Pub Get" sa pubspec.yaml (SAME PARENT DIRECTORY - /teknikalph_app/pubspec.yaml)
// para madownload si dependencies (packages n' stuff)