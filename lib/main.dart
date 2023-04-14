import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  var nameController;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromRGBO(78, 168, 241, 1),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 150, bottom: 50),
                child: Text(
                  "Welcome to TeleMart",
                  style: TextStyle(fontSize: 35),
                  textAlign: TextAlign.center,
                )),
            Container(
              padding: EdgeInsets.only(bottom: 50),
              width: 200,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromRGBO(247, 244, 244, 1))),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black)),
                      labelText: 'Username',
                    ),
                    style: TextStyle(
                        height: 1.5,
                        color: Color.fromARGB(255, 245, 246, 245),
                        fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 55),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: nameController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromRGBO(255, 255, 255, 1.0))),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black)),
                      labelText: 'Password',
                    ),
                    style: TextStyle(
                        height: 1.5,
                        color: Color.fromARGB(255, 245, 246, 245),
                        fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 226, 113, 27),
                      elevation: 15.0,
                      textStyle:
                          const TextStyle(color: Colors.black, fontSize: 20)),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ]),
            ),
            Flexible(
                child: Text(
              "A product by JK",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
