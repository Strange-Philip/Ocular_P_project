import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:op_app/cards/coursecards.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TopicPage extends StatefulWidget {
  final Topic topic;

  const TopicPage({Key key, this.topic}) : super(key: key);
  @override
  _TopicPageState createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  int pages;
  int indexpage;
  PDFViewController controller;
  @override
  Widget build(BuildContext context) {
    String text = "$indexpage of $pages";
    // double progress = indexpage / pages;

    // setState(() async {
    //   //  progess = widget.topic.progress;
    //   SharedPreferences prefences = await SharedPreferences.getInstance();
    //   await prefences.setDouble('topic', progress);
    // });

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF4354b3),
          title: Text(
            widget.topic.pdf == '' ? "" : text,
            style: TextStyle(
              fontFamily: 'Quicksand',
            ),
          ),
          elevation: 0,
        ),
        floatingActionButton: widget.topic.pdf == ''
            ? SizedBox()
            : FloatingActionButton.extended(
                backgroundColor: Color(0xFF4354b3),
                onPressed: () {},
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
            : PDFView(
                filePath: widget.topic.pdf,
                enableSwipe: true,
                // swipeHorizontal: true,
                autoSpacing: false,
                pageFling: false,
                onRender: (pages) {
                  setState(() {
                    this.pages = pages;
                  });
                },
                // onError: (error) {
                //   print(error.toString());
                // },
                // onPageError: (page, error) {
                //   print('$page: ${error.toString()}');
                // },
                onViewCreated: (controller) {
                  setState(() {
                    this.controller = controller;
                  });
                },
                onPageChanged: (indexpage, _) {
                  setState(() {
                    this.indexpage = indexpage;
                  });
                },
              ),
      ),
    );
  }
}
