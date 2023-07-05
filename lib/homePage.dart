import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();


}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bonjour John Doe'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 100,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/map').then((_) => setState(() {}));
                  },
                  child: const Icon(Ionicons.map_outline, size: 75)
              ),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(size: 75, Icons.gavel_outlined)
                  ),
                ),
                const SizedBox(width: 24),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(size: 75, Ionicons.logo_whatsapp)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(size: 75, Icons.rate_review_outlined)
                  ),
                ),
                const SizedBox(width: 24),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(size: 75, Ionicons.wifi_outline)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(size: 75, Ionicons.information_circle_outline)
                  ),
                ),
                const SizedBox(width: 24),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(size: 75, Ionicons.settings_outline)
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}