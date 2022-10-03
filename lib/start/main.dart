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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          width:double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF1F3F6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pet Walk', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(117, 172, 255, 1),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),),
              SizedBox(height: 20),
              Image.network("https://i.imgur.com/rY4PkZR.png"),
              SizedBox(height: 20),
              Text("A aplicação Pet Walk foi concebida para tomar conta do seu animal de estimação. Fixe objectivos com base nas suas necessidades. Veja os seus progressos e partilhe-os com a comunidade.",style: TextStyle(color: Color(0xFF77787B)), textAlign: TextAlign.left,),
              SizedBox(height: 40),
              InkWell(
                // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => )),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF6EA8FF),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text("Enviar",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
