import 'package:flutter/material.dart';
import 'package:telemart/home.dart';
import 'package:telemart/route.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: RouteApp.loginPage,
    routes: {
      "/": ((context) => MyHomePage(title: "Telemart")),
      RouteApp.homePage: (context) => HomePage(),
    },
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();

    void myFunction() {
      print("Here");
      Navigator.popAndPushNamed(context, RouteApp.homePage);
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(78, 168, 241, 1),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 120, bottom: 50),
                child: Text(
                  "Welcome to TeleMart",
                  style: TextStyle(fontSize: 35),
                  textAlign: TextAlign.center,
                )),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  height: 200,
                  padding: EdgeInsets.only(bottom: 0),
                  width: 200,
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3,
                                  color: Color.fromRGBO(247, 244, 244, 1))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.black)),
                          labelText: 'Username',
                        ),
                        style: TextStyle(
                            height: 1.5,
                            color: Color.fromARGB(255, 245, 246, 245),
                            fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 1),
                      child: TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: passwordController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3,
                                  color: Color.fromRGBO(255, 255, 255, 1.0))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.black)),
                          labelText: 'Password',
                        ),
                        style: TextStyle(
                            color: Color.fromARGB(255, 245, 246, 245),
                            fontSize: 25),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => myFunction(),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 226, 113, 27),
                          elevation: 15.0,
                          textStyle: const TextStyle(
                              color: Colors.black, fontSize: 20)),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Product by JK",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
