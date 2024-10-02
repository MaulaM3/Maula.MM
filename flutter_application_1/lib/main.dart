import 'package:flutter/material.dart';
import 'package:flutter_application_1/Profil_aku.dart'; // Pastikan path sudah benar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 102, 183, 58)),
        useMaterial3: true,
      ),
      home: const ProfilAku(), // Memanggil widget Profil
    );
  }
}
