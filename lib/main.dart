import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velibtekrar/101/button_learn.dart';
import 'package:velibtekrar/101/container_sized_box.dart';
import 'package:velibtekrar/101/scaffold_learn.dart';
import 'package:velibtekrar/101/text_learn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //CupertinoApp() Material için ios alternatifi
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:const ButtonLearn(),
    );
  }
}
