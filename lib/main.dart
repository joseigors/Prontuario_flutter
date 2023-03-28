import 'package:flutter/material.dart';
import 'package:prontuario_medico/pages/CadMedicoPage.dart';
import 'package:prontuario_medico/pages/CadPacientePage.dart';
import 'package:prontuario_medico/pages/ExamePage.dart';
import 'package:prontuario_medico/pages/HomePage.dart';
import 'package:prontuario_medico/pages/LoginPage.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {'/login': (context) => const LoginPage(),
               '/cadMedico' : (context) => const MedicoPage(),
               '/cadPaciente': (context) => const PacientePage(),
               '/exame' : (context) => const ExamePage(),
               '/home' : (context) => const HomePage()

      },
    );
  }
}
