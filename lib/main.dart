import 'package:flutter/material.dart';
import 'package:islamic_app/pages/landing_page.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LandingPage()
        );
    }
}
