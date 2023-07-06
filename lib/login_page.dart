import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Logo.png', height: 200),
                  Text(
                    "Relais Bienveillant".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30
              ),
              alignment: Alignment.centerLeft,
              child: const Column(
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
            const SizedBox(height: 10),
            const LoginForm(),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 125,
                  vertical: 25,
                ),
              ),
              child: const Text(
                'Connexion',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home').then((_) => setState(() {}));
              },
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Mot de passe oublié ?",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ),
            const SizedBox(height: 40),
            Image.asset('assets/FaceID.png', height: 150),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(
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
  const LoginForm({super.key});

  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
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
          const SizedBox(height: 30),
          TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.redAccent[400],
              ),
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: const Icon(
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
