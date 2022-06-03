// ignore_for_file: prefer_const_constructors, prefer_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'slideshow.dart';


void main() {
  runApp(const MyApp());
}

//My app precisa ser um objeto intansciado por uma classe do tipo widget <--
//Conceito criado pelo flutter para definir tudo que é enxergável.
//Stateless Widget <- Herança.]
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      //Widget que envolve outros widgets necessários para aplicativos de material design
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.black
      ),
      home: Scaffold(
        body: ListView(
            children: [
              SlideShow
                (),
              ListTile(
                leading: Icon(Icons.abc),
                title: Text("Titulo "),
                subtitle: Text("Subtítulo"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {},
              ),
             
            ],
          ),
          //color: Colors.blueGrey,

        appBar: AppBar(
          centerTitle: true,
          title: Text("Chats"),
          foregroundColor: Colors.blue,
          backgroundColor: Colors.white,
          actions: [
            menuSuperior(w:Icon(Icons.search)),
            menuSuperior(w:Icon(Icons.workspaces_sharp))
          ],
                
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (
              ){} ,
          child: Icon(Icons.add),

        ),
        bottomNavigationBar: menuInferior(),
      ),
    );
  }
}


class menuInferior extends StatelessWidget {
  const menuInferior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          backgroundColor: Colors.grey,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Inicío"

            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Ligações"
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Conversas"
              ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações"
            )
          ],


        );
  }
}
  

class Menuzinho extends StatelessWidget {
  // atributo
  final Widget w; // não muda

  // construtor
  //this = referencia ao objeto desta classe, usados em parametros
  //super = referencia ao metodo???
  const Menuzinho({
    Key? key,
    required this.w,
  }) : super(key: key);

  //metodo
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: w,
      onPressed: () {},
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

class menuSuperior extends StatelessWidget {
  final Widget w; //não irá mudar
  const menuSuperior({
    Key? key,
    required this.w,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: w,
      onPressed: (){},
    );
    
  }
}
