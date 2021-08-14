import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewHTML extends StatefulWidget {
  const ViewHTML({Key key}) : super(key: key);

  @override
  _ViewHTMLState createState() => _ViewHTMLState();
}

class _ViewHTMLState extends State<ViewHTML> {
  String val;
  WebViewController webViewController;

  loadLocalHTML() async {
    String fileHtmlContents =
        await rootBundle.loadString('images/pdf/Cornea & Sclera.html');
    webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
      initialUrl: '',
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController tmp) {
        webViewController = tmp;
        loadLocalHTML();
      },
    ));
  }
}
