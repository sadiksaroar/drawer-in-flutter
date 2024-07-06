import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:  _globalKey,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        backgroundColor: Colors.green,

        leading: IconButton(icon: Icon(Icons.arrow_forward_ios),onPressed: (){
          _globalKey.currentState?.openDrawer();
        },),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          _globalKey.currentState?.openDrawer();

        }, child: Text("ss"),),
      ),
    );
  }
}
