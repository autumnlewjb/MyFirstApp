import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kmpp_app/cards.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmpp_app/qr_scanner.dart';

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
        backgroundColor: Colors.deepPurpleAccent[400],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              new CardManager(),
            ],
          ),
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return new FloatingActionButton(
              onPressed: () => _activateScanner(context),
              child: SvgPicture.asset('icons/scanner.svg'));
        },
      ),
    );
  }
}

_activateScanner(BuildContext context) async {
  bool success = await scannerFunction(context);
  if (!success) {
    final snackbar = new SnackBar(
      content: Text('Unable to launch the website. '),
      action: SnackBarAction(
        label: 'TRY AGAIN',
        onPressed: () => _activateScanner(context),
      ),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }
}
