import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'components/containerbase.dart';
import 'components/bodycontainer.dart';
import 'components/containerborder.dart';
import 'components/containerradius.dart';
import 'components/containerradiusall.dart';
import 'components/containershadow.dart';
import 'components/containergradient.dart';
import 'components/containerlinealg.dart';
import 'components/containerimg.dart';
import 'components/containerbutton.dart';
import 'components/containerbsnack.dart';
import 'components/container2tap.dart';
import 'components/containershowimg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 0, 255, 195)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'no one'),
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
  int _counter = 10;

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
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const BodyContainer(
        firstColor: Colors.pink,
        secondColor: Colors.purple,
        content: [
          ContainerBase(color: Colors.red,height: 85, width: 85, texto: "Contenedor base",),
          ContainerBorder(color: Colors.blue, height: 85, width: 85, texto: "Contenedor borde", border: 1,),
          ContainerRadius(color: Colors.green, texto: "Contenedor circulo", width: 85, height: 85, border: 1, radius: 50),
          ContainerRadiusAll(color: Colors.amber, texto: "Contenedor RALL", width: 85, height: 85, border: 1, radiusleft: 20, radiusright: 20),
          ContainerShadow(color: Colors.blueGrey, texto: "Contenedor Shadow", width: 85, height: 85, border: 1, colorshadow: Colors.black, off1: 5, off2: 5, blurradius: 5),
          ContainerGradient(texto: "Contenedor Gradient", width: 85, height: 85, border: 1, radius: 0.5, firstColor: Colors.blue, secondColor: Colors.green),
          ContainerLinealG(texto: "Contenedor LG", width: 85, height: 85, border: 1, color: [Colors.red, Colors.blue, Colors.green], end1: 0.8, end2: 1),
          ContainerImg(width: 85, height: 85, border: 1, img: "assets/wallpaper.jpg"),
          ContainerButton(color: Colors.cyan, text: "Contenedor Boton", width: 85, height: 85, border: 1),
          ContainerBSnack(color: Colors.deepOrange, text: "Contenedor Snackbar", width: 85, height: 85, border: 1),
          Container2tap(color: Colors.deepPurple, border: 1, texto: "Contenedor Double Tap", width: 85, height: 85),
          ContainerShowImg(border: 1, color: Colors.indigo, img: "assets/wallpaper.jpg", texto: "Contenedor Dialog", width: 85, height: 85),
        ],
      ),
      // body: Container(
      //   decoration: const BoxDecoration(
      //       gradient: LinearGradient(colors: [Colors.pink, Colors.purple])),
      //   child: const Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: <Widget>[
      //         ContainerItem(color: Colors.red),
      //         Text(
      //           'Contenedores',
      //         ),
      // Text(
      //   '$_counter',
      //   style: Theme.of(context).textTheme.headlineMedium,
      // ),
      // Container(
      //   margin: EdgeInsets.all(10),
      //   width: 75,
      //   height: 75,
      //   decoration: BoxDecoration(
      //       gradient: RadialGradient(
      //           center: Alignment.center,
      //           radius: 0.5,
      //           colors: [Colors.cyanAccent, Colors.indigo])),
      //   child: const Text("Hola madafaka"),
      //   alignment: Alignment.topLeft,
      // ),
      // Container(
      //   width: 75,
      //   height: 75,
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           colors: [Colors.deepPurple, Colors.lightBlue],
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight),
      //       border: Border.all(width: 2)),
      //   child: const Text("Hola madafaka"),
      //   alignment: Alignment.topLeft,
      // ),
      // Container(
      //   width: 75,
      //   height: 75,
      //   decoration: BoxDecoration(
      //       border: Border.all(color: Colors.lightGreen, width: 5),
      //       color: Colors.purpleAccent,
      //       boxShadow: [
      //         BoxShadow(
      //             color: Colors.black,
      //             offset: Offset(5, 5),
      //             blurRadius: 5)
      //       ]),
      //   child: const Text("Hola madafaka"),
      //   alignment: Alignment.topLeft,
      // ),
      // InkWell(
      // onTap: (){
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text("One Tap"))
      //   );
      // },
      // onDoubleTap: () {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text("Double tap"))
      //   );
      // },
      // child: Container(
      //   width: 150,
      //   height: 150,
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage("assets/wallpaper.jpg"))),
      // ),
      // )
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.catching_pokemon_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
