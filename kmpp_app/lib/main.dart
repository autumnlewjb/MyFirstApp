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
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('KMPP for Students'),
          backgroundColor: Colors.blueAccent[700],
        ),
        body: new HomeScreenContent(),
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            return new FloatingActionButton(
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              onPressed: () => _activateScanner(context),
              child: SvgPicture.asset('icons/scanner.svg'),
            );
          },
        ),
      ),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          new CardManager(),
        ],
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
