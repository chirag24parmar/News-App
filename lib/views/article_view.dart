import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  ArticleView({required this.blogUrl});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  // final Completer<WebViewController> _completer =
  //     Completer<WebViewController>();
  // get blogUrl => null;

  late final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: WebViewWidget(
      controller: controller,

      // onWebViewCreated : ((WebViewController WebViewController{})),
      // controller: blogUrl,
    )
        // ),
        );
  }
}
