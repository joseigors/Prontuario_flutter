import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prontuario_medico/widgets/styles/CustomColor.dart';
import 'package:prontuario_medico/widgets/styles/CustomStyleButton.dart';

class ExamePage extends StatefulWidget {
  const ExamePage({Key? key}) : super(key: key);

  @override
  State<ExamePage> createState() => _ExamePageState();
}

class _ExamePageState extends State<ExamePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/assets/images/background.jpg"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                  Text(
                    'Cadastrar Exame',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: CustomStyleButton.textFieldStyle(
                      labelTextStr: "Nome do paciente",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: CustomStyleButton.textFieldStyle(
                      labelTextStr: "CPF",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: CustomStyleButton.textFieldStyle(
                      labelTextStr: "Data do exame",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: CustomStyleButton.textFieldStyle(
                      labelTextStr: "Especialidade do medico",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: CustomStyleButton.textFieldStyle(
                      labelTextStr: "Data de Nascimento",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: CustomStyleButton.textFieldStyle(
                      labelTextStr: "Recomendação medica",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 120,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          color: CustomColor.geloColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: SizedBox.expand(
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text(
                                  "Marcar",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 58, 58, 58),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
