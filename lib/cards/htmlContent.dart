import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'coursecards.dart';

class ViewHTML extends StatefulWidget {
  final Topic topic;
  const ViewHTML({Key key, this.topic}) : super(key: key);

  @override
  _ViewHTMLState createState() => _ViewHTMLState();
}

class _ViewHTMLState extends State<ViewHTML> {
  WebViewController webViewController;

  Future<void> loadHtmlFromAssets(String filename, controller) async {
    String fileText = await rootBundle.loadString(filename);
    controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WebViewController _controller;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            centerTitle: true,
            backgroundColor: Color(0xFF4354b3),
            elevation: 0,
            title: Text(
              widget.topic.name.toUpperCase(),
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          backgroundColor: Colors.white,
          floatingActionButton: widget.topic.pdf == ''
              ? SizedBox()
              : FloatingActionButton.extended(
                  backgroundColor: Color(0xFF4354b3),
                  onPressed: () {
                    Navigator.of(context).pushNamed('noteEdit');
                  },
                  elevation: 0,
                  label: Row(
                    children: [
                      Text(
                        'Note',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      Icon(
                        LineIcons.alternatePencil,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
          body: widget.topic.pdf == ''
              ? Center(
                  child: Column(
                    children: [
                      Spacer(),
                      SvgPicture.asset(
                        'images/books.svg',
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Text(
                          "Topic not available yet",
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              // color: Colors.black,
                              fontFamily: 'Quicksand'),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: WebView(
                    initialUrl: '',
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated:
                        (WebViewController webViewController) async {
                      _controller = webViewController;
                      await loadHtmlFromAssets(widget.topic.pdf, _controller);
                    },
                  ),
                )),
    );
  }
}
