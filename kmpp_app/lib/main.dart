import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// The main function is the starting point for all our Flutter apps
void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
              buttons,
            ],
          ),
        ),
      ),
    ),
  );
}

final kmppLogo = new Expanded(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Image(
        image: AssetImage('images/kmpp.jpg'),
      ),
    ],
  ),
);

final buttons = new Column(
  mainAxisAlignment: MainAxisAlignment.end,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    InkWell(
      onTap: _launchMIS,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('KMPP MIS'),
              subtitle: Text('Website by KMPP to record your outings. '),
            )
          ],
        ),
      ),
    ),
    InkWell(
      onTap: _launchPortal,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('KMPP Portal'),
              subtitle: Text('KMPP Student Portal to download lecture notes.'),
            )
          ],
        ),
      ),
    ),
    InkWell(
      onTap: _launchEsasi,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('KMPP Esasi'),
              subtitle:
                  Text('Website to record your co-curricular participation. '),
            )
          ],
        ),
      ),
    ),
  ],
);

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
