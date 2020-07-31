import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// The main function is the starting point for all our Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Text('KMPP App'),
          backgroundColor: Colors.deepPurpleAccent[700],
        ),
        body: Center(
          child: RaisedButton(
              child: Text(
                "KMPP MIS",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.deepPurple[900],
              autofocus: false,
              clipBehavior: Clip.none,
              onPressed: _launchMIS),
        ),
      ),
    ),
  );
}

_launchMIS() async {
  const url = 'http://mis.kmpp.matrik.edu.my/misv3/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
