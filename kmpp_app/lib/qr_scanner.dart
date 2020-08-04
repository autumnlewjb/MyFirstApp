import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:kmpp_app/add_functions.dart';
import 'package:url_launcher/url_launcher.dart';

void scannerFunction(BuildContext context) async {
  var result = await BarcodeScanner.scan();

  print(result.rawContent);
  // launchURL(context, result.rawContent);
  _launchURLWithBrowser(result.rawContent);
}

_launchURLWithBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    var search = url.split('/').join('+');
    await launch('https://google.com/search?q=$search');
  }
}
