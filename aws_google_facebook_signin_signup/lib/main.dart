import 'package:flutter/material.dart';

import 'buttons.dart';
import 'googlefacebook-signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AWS Cognito Google Facebook signin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'AWS Cognito Google Facebook signin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String idendity_provider;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
        body: 
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Wrap(
              runSpacing: 20,
              children: [
                SizedBox(
                    width: double.infinity,
                    child: GoogleButton(onGoogleSignIn)),
                SizedBox(
                    width: double.infinity,
                    child: FacebookButton(facebookLogin)),
              ],
            ),
          ),
        ))
        ;
  }

    void facebookLogin() async {
    idendity_provider = "Facebook";
    // web_view_enable=1;
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => WebViewGoogleFacebook(idendity_provider)),
    );
  }

  void onGoogleSignIn() async {
    idendity_provider = "Google";
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => WebViewGoogleFacebook(idendity_provider)),
    );
  }

}
