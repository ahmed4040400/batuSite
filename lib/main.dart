import 'package:flutter/material.dart';

import 'components/image_slider.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('test'),
            ),
            ListTile(
              title: Text('test'),
            ),
            ListTile(
              title: Text('test'),
            ),
            ListTile(
              title: Text('test'),
            ),
            ListTile(
              title: Text('test'),
            )
          ],
        ),
      ),

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 500,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        primary: Colors.white),
                    onPressed: () {},
                    child: const Text('vision'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        primary: Colors.white),
                    onPressed: () {},
                    child: const Text('message'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        primary: Colors.white),
                    onPressed: () {},
                    child: const Text('reborts'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        primary: Colors.white),
                    onPressed: () {},
                    child: const Text('contact us'),
                  ),
                ],
              ),
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              background: ImageSlider(),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1000),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
