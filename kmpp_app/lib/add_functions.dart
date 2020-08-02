import 'package:flutter/material.dart';
import 'package:kmpp_app/webview_container.dart';

void launchURL(BuildContext context, String url) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => WebViewContainer(url)));
}

void backButtonManager(BuildContext context) {
  Navigator.pop(context);
}
