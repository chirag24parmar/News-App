// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  ArticleView({required this.blogUrl});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  // final Completer<WebViewController> _controller =
  //     Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: WebView(
        //   initialUrl: widget.blogUrl,
        // onWebViewCreated: (WebViewController webViewController) {
        //   _controller.complete(webViewController);
        // },
        // ),
        );
  }
}
