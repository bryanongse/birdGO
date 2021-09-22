import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    final double img_width = 256;
    final double img_height = 256;

    return new Container(
      child: new Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Image.asset(
              'assets/tree.jpg', height: img_height, width: img_width),

          new Padding(
            padding: const EdgeInsets.all(12.0),
              child: new Text(
              "Bird Name",
              style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
              textDirection: TextDirection.ltr,
               ),
          ),

          new RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        style: new TextStyle(color: Colors.black),
                        text: "To learn more "
                    ),
                    TextSpan(
                        style: new TextStyle(color: Colors.blue),
                        text: "Click here",
                        recognizer: TapGestureRecognizer()..onTap =  () async{
                          var url = "https://docs.flutter.io/flutter/services/UrlLauncher-class.html";
                          await launch(url);
                          // if (await canLaunch(url)) {
                          //   await launch(url);
                          // } else {
                          //   throw 'Could not launch $url';
                          // }
                        }
                    ),
                  ],
              ),
            textDirection: TextDirection.ltr,
          ),

          // new Text.rich(
          //     TextSpan(
          //       text:"bird link",
          //       style: new TextStyle(color: Colors.blue),
          //       recognizer: new TapGestureRecognizer()
          //         ..onTap = () { launch('https://google.com');
          //         },
          //     )
          // ),

          new SingleChildScrollView(
            child: new Text(
              "This is the info of this bird",
              style: new TextStyle(fontSize: 16, color: Colors.black),
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}

