import 'package:example/horizontalExample.dart';
import 'package:example/scrollExample.dart';
import 'package:example/scrollManualHeightExample.dart';
import 'package:example/simpleExample.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleListScreen(),
    );
  }
}

class ExampleListScreen extends StatelessWidget {
  const ExampleListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coachmaker'),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: ListView(
          children: [
            ListTile(
              title: Text('Simple example'),
              trailing: Icon(Icons.adaptive.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Simple(title: 'Simple Example'),
                ));
              },
            ),
            ListTile(
              title: Text('Scroll example'),
              trailing: Icon(Icons.adaptive.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScrollExample(title: 'Scroll Example'),
                ));
              },
            ),
            ListTile(
              title: Text('Scroll manual height example'),
              trailing: Icon(Icons.adaptive.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScrollManualHeightExample(
                      title: 'Scroll Manual Height Example'),
                ));
              },
            ),
            ListTile(
              title: Text('Horizontal example'),
              trailing: Icon(Icons.adaptive.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      HorizontalExample(title: 'Horizontal Example'),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
