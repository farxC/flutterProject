
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


void main() {
  runApp(Tela());
}

// Criando o nosso próprio widget
class Tela extends StatelessWidget {
  const Tela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        body: ListView(
          children: [

            ListTile(
              leading: Perfil(),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo do segundo"),
              trailing: Icon(Icons.chevron_right, size: 38),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.favorite, size: 38),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo do primeiro"),
              trailing: Icon(Icons.chevron_right, size: 38),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.accessible_sharp, size: 38),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo do terceiro"),
              trailing: Icon(Icons.chevron_right, size: 38),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.volunteer_activism, size: 38),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo do quarto"),
              trailing: Icon(Icons.chevron_right, size: 38),
              onTap: () {},
            ),
          ],
        ),
        drawer: MenuLateral(),
        appBar: AppBar(
          title: Text("Meu Primeiro App"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {} ,
          child: Icon(Icons.chat),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: "Início",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
              label: "Busca",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
              label: "Ajustes",
            ),
          ],
        ),
      ),
    );
  }
}

class Menuzinho extends StatelessWidget {
  // Atributos
  final Widget w;

  // Construtor
  const Menuzinho({
    Key? key,
    required this.w,
  }) : super(key: key);

  // Método
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: w,
      onPressed: () {
        print("Clicou no menu");
      },
    );
  }
}

class Botaozinho extends StatelessWidget {
  const Botaozinho({Key? key}) : super(key: key);

  void clicar() {
    print("clicou no botão");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("CLIQUE AQUI"),
      onPressed: clicar,
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
      ),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      // child: Text("HA"),
      backgroundImage: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK9xvq501BrA6ct32DMN4Cb3LqRkzlZgGJog&usqp=CAU"
      ),
    );
  }
}

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Samiros"),
            accountEmail: Text("samara.venancio@gmail.com"),
            currentAccountPicture: Perfil(),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text("Meus Arquivos"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Compartilhados Comigo"),
          ),
          ListTile(
            leading: Icon(Icons.timer_outlined),
            title: Text("Recentes"),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Lixeira"),
          ),
          Divider(),
          ListTile(
            title: Text("Labels"),
            enabled: false,
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("Família"),
          ),
        ],
      ),
    );
  }
}
