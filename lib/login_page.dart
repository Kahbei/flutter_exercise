import 'package:flutter/material.dart';
import 'package:hackathon/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Logo.png', height: 200),
                  Text(
                    "Relais Bienveillant".toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30
              ),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connexion",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 22),
                  Text(
                    "Bienvenue dans votre application !",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            LoginForm(),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Colors.redAccent,
                padding: EdgeInsets.symmetric(
                  horizontal: 125,
                  vertical: 25,
                ),
              ),
              child: Text(
                'Connexion',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home').then((_) => setState(() {}));
              },
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                "Mot de passe oublié ?",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ),
            SizedBox(height: 40),
            Image.asset('assets/FaceID.png', height: 150),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Créer un compte",
                  style: TextStyle(
                    color: Colors.redAccent
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

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Your Email',
              labelStyle: TextStyle(
                color: Colors.redAccent[400],
              ),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.redAccent[400],
              ),
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.visibility,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
