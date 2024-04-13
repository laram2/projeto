import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Professor Online',
      initialRoute: '/loginpage',
      routes: {
        '/loginpage': (context) => LoginPage(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Color.fromARGB(255, 53, 154, 129),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("logo-vertical.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "CPF",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                icon: Icon(Icons.person, color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                icon: Icon(
                  Icons.password_outlined,
                  color: Colors.white,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 1),
            Container(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Primeiro acesso',
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Text(
                    'Recuperar senha',
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              child: Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    'ENTRAR',
                    style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 253, 253, 253)),
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 17, 163, 161)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 3, 110, 105),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.update_rounded,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        title: Text('Professor online'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('O portal do professor da rede estadual!'),
              accountEmail: Text('pedroalmeida1@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('prof.jpg'),
                child: Text('',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 3, 110, 105))),
              ),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 3, 110, 105)),
            ),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Dados pessoais'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.access_time),
                title: Text('Horários'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.event),
                title: Text('Caléndario letivo'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.group),
                title: Text('Minhas turmas'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.check),
                title: Text('Frequência'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.storage),
                title: Text('Avaliações e notas'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.list),
                title: Text('Plano de ensino'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.border_color),
                title: Text('Registro de aula'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.storage),
                title: Text('Atividades'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair da conta'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            Container(
              height: 10,
              child: DrawerHeader(
                  child: Text('', style: TextStyle(color: Colors.white)),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0)),
            ),
            ListTile(
              title: Text(
                'Informações',
                style: TextStyle(),
              ),
            ),
            ListTile(
                leading: Icon(Icons.cached),
                title: Text('Sincronizar'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.brightness_5),
                title: Text('Configurações'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            ListTile(
                leading: Icon(Icons.info),
                title: Text('Sobre'),
                iconColor: Color.fromARGB(
                  255,
                  3,
                  110,
                  105,
                )),
            Container(
              height: 10,
              child: DrawerHeader(
                  child: Text('', style: TextStyle(color: Colors.white)),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0)),
            ),
            ListTile(
              title: Text(
                'Desenvolvido por:',
                style: TextStyle(),
              ),
            ),
            ListTile(
              title: Text(
                'SEDUC CEARÁ / ASTIN',
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset('profa.jpg',
                height: 144,
                width: 800,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              color: Color.fromARGB(255, 178, 228, 225),
              height: 40,
              width: 2000,
              child: Text('Professor Online SEDUC',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 49, 49, 49))),
            ),
            Container(
              alignment: Alignment.topCenter,
              color: Color.fromARGB(255, 178, 228, 225),
              height: 40,
              width: 2000,
              child: Text('O portal do professor da rede estadual',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 49, 49, 49))),
            ),
            Container(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 3, 110, 105),
              height: 50,
              width: 2000,
              child: Text('Seja bem-vindo(a)!',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 255, 255, 255))),
            ),
            Container(
              alignment: Alignment.center,
              height: 150,
              width: 200,
              child: Icon(Icons.inbox,
                  size: 150, color: Color.fromARGB(255, 85, 84, 81)),
            ),
            Container(
              height: 100,
              child: Text('Nenhum item encontrado!',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 61, 61, 61))),
            ),
          ],
        ),
      ),
    );
  }
}
