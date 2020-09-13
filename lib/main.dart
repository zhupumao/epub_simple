import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Epub Viewer'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              EpubViewer.setConfig(
                themeColor: Colors.deepPurple,
                identifier: "androidBook",
                scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                allowSharing: true,
                enableTts: true,
              );
              EpubViewer.openAsset(
                'assets/folio.epub',
              );
            },
            child: Container(
              child: Text('open epub'),
            ),
          ),
        ),
      ),
    );
  }
}
