import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 30, 35, 126), Colors.white30],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight)),
        );
    return Drawer(
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(),
                accountName: Text("Jhon"),
                accountEmail: Text(" Jhon@gmail.com "),
                currentAccountPicture: CircleAvatar(),
              ),
              ListTile(
                leading: const Icon(Icons.medical_services),
                title: const Text("Exames"),
                onTap: () {
                  Navigator.pushNamed(context, "/exame");
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Minha conta"),
                onTap: () {
                  Navigator.pushNamed(context, "/minhaConta");
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: const Icon(Icons.medical_information),
                title: const Text("Resultados"),
                onTap: () {
                  Navigator.pop(context);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: const Icon(Icons.medical_services),
                title: const Text("Consultas"),
                onTap: () {
                  Navigator.pop(context);
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Sair"),
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                  //Navegar para outra página
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
