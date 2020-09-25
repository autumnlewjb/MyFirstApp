import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

Future<bool> scannerFunction(BuildContext context) async {
  var result = await BarcodeScanner.scan();

  print(result.rawContent);
  return launchURLWithBrowser(result.rawContent);
}

Future<bool> launchURLWithBrowser(String url) async {
  try {
    await launch(
      url,
      option: CustomTabsOption(
        toolbarColor: Colors.blue[400],
        enableUrlBarHiding: true,
        enableDefaultShare: true,
        showPageTitle: true,
        enableInstantApps: false,
        extraCustomTabs: <String>[
          'org.mozilla.firefox',
          'com.microsoft.emmx',
        ],
        animation: CustomTabsAnimation.slideIn(),
      ),
    );
    return true;
  } catch (e) {
    return false;
  }
}
