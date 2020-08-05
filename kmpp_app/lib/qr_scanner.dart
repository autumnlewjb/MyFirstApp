import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:url_launcher/url_launcher.dart';

Future<bool> scannerFunction(BuildContext context) async {
  var result = await BarcodeScanner.scan();

  print(result.rawContent);
  return launchURLWithBrowser(result.rawContent);
}

Future<bool> launchURLWithBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
    return true;
  } else {
    return false;
  }
}
