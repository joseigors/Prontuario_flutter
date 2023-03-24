import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prontuario_medico/widgets/styles/CustomColor.dart';
import 'package:prontuario_medico/widgets/styles/CustomStyleButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/background.jpg"),
          fit: BoxFit.cover
        ),
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
                    children: [
                      Container(
                        width: 190,
                        height: 190,
                        decoration: const BoxDecoration(
                          image: DecorationImage( image: NetworkImage("https://cdn-icons-png.flaticon.com/512/46/46196.png"),

                            fit: BoxFit.fitWidth,
                          ),

                            color: Colors.white30,
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),

                          ),
                        ),
                        ),



                    ],
                  ),
                  Text('Sua consulta',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      color: Colors.white30,

                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    validator: (text) {
                      if (text!.isEmpty || !text.contains('@')) {
                        return "Email Inválido!";
                      }
                    },
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: CustomStyleButton.textFieldStyle(
                        labelTextStr: "E-mail",
                        hintTextStr: "informe o seu e-mail"),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,

                    validator: (text) {
                      if (text!.isEmpty || text.length < 6) {
                        return "Senha Inválida";
                      }
                    },
                    obscureText: true,
                    decoration: CustomStyleButton.textFieldStyle(
                        labelTextStr: "Senha",
                        hintTextStr: "informe sua Senha"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text('Esqueceu a senha?'),
                        onPressed: () {},
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
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
                                  "Acessar",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 58, 58, 58),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {

                            },
                          ),
                        ),
                      ),

                    ],
                  ),  ],
              ),

            ],
          ),
          ),
        ),

    );
  }
}
