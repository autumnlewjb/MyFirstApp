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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/kmpp.jpg'),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "MIS",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.deepPurple[900],
                    animationDuration: Duration(seconds: 3),
                    elevation: 10.0,
                    autofocus: false,
                    clipBehavior: Clip.none,
                    onPressed: _launchMIS,
                  ),
                  RaisedButton(
                    child: Text(
                      "Portal",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.deepPurple[900],
                    autofocus: false,
                    elevation: 7.0,
                    highlightElevation: 3.0,
                    clipBehavior: Clip.none,
                    onPressed: _launchPortal,
                  ),
                  RaisedButton(
                    child: Text(
                      "ESASI",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.deepPurple[900],
                    autofocus: false,
                    elevation: 4.0,
                    clipBehavior: Clip.none,
                    onPressed: _launchEsasi,
                  ),
                ],
              )
            ],
          ),
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

_launchPortal() async {
  const url = 'http://portal.kmpp.matrik.edu.my/login/index.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEsasi() async {
  const url = 'http://esasi.kmpp.matrik.edu.my/loginPelajar.php';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
