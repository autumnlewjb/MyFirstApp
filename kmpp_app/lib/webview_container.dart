import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kmpp_app/add_functions.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String url;
  WebViewContainer(this.url);

  @override
  _WebViewContainerState createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  final String url;
  _WebViewContainerState(this.url);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[300],
          leading: BackButton(
            color: Colors.black,
            onPressed: () => backButtonManager(context),
          ),
          title: Text('Website', style: TextStyle(color: Colors.black)),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: WebView(
                  initialUrl: this.url,
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
