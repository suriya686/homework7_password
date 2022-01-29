import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          decoration: BoxDecoration(color: Colors.deepOrangeAccent),
          child: Padding(
            padding: const EdgeInsets.all(100),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lock,
                              size: 80.0,
                              color: Colors.black26,
                            ),
                            SizedBox(

                              child: Text(
                                'กรุณาใส่รหัสผ่าน',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.black26),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 1; i <= 3; i++) buildButton(i),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 4; i <= 6; i++) buildButton(i),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 7; i <= 9; i++) buildButton(i),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65.0,
                        height: 65.0,
                      ),
                      Container(
                          width: 75.0, height: 75.0, child: buildButton(0)),
                      Container(
                        width: 65.0,
                        height: 65.0,
                        child: Icon(
                          Icons.backspace,
                          size: 55.0,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 10),
                    child: TextButton(
                      child: Text('ลืมรหัสผ่าน',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0)),
                      style: TextButton.styleFrom(
                        primary: Colors.indigoAccent,
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget buildButton(int num) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 5.0),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '$num',
            style: TextStyle(fontSize: 30.0, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
