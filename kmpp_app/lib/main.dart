import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

// The main function is the starting point for all our Flutter apps
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new HomeScreenApp());
}

class HomeScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreenContent());
  }
}

class HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('KMPP App'),
        backgroundColor: Colors.deepPurpleAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            buttons,
          ],
        ),
      ),
    );
  }
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

//TODO: cards not splashing.
final buttons = new Column(
  mainAxisAlignment: MainAxisAlignment.end,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Stack(
      children: <Widget>[
        Container(
          height: 170,
          child: Card(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/welcome.jpg'),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.luminosity,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'KMPP MIS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Website by KMPP to record your outings.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
          ),
        ),
        Container(
          height: 170,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: _launchMIS,
              splashColor: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Stack(
      children: <Widget>[
        Container(
          height: 170,
          child: Card(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/library.jpg'),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.luminosity,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'KMPP Portal',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'KMPP Student Portal to download lecture notes.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
          ),
        ),
        Container(
          height: 170,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: _launchPortal,
              splashColor: Colors.white,
            ),
          ),
        ),
      ],
    ),
    Stack(
      children: <Widget>[
        Container(
          height: 170,
          child: Card(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/sport.jpg',
                      ),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.luminosity,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'KMPP Esasi',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Website to record your co-curricular participation. ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 170,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _launchEsasi,
                      splashColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            clipBehavior: Clip.antiAlias,
          ),
        ),
      ],
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
