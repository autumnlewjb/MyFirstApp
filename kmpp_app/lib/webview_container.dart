import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:kmpp_app/qr_scanner.dart';

//TODO: Webview have problem accessing link with _blank
//TODO: back button in webview quit the whole webview and not the webpage
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
            onPressed: () => _backButtonManager(context),
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
                  onWebResourceError: (error) => launchURLWithBrowser(this.url),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _backButtonManager(BuildContext context) {
  Navigator.pop(context);
}
