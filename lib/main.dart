import 'package:flutter/material.dart';
import 'package:invoice_app/utils/routes_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: ItemRoutes,
    )
  );
}

