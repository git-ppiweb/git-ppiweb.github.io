import 'package:flutter_web/material.dart';

import 'package:partaiperindo_webdev1/pages/aboutus.dart';
import 'package:partaiperindo_webdev1/pages/index.dart';
import 'package:partaiperindo_webdev1/pages/news.dart';
import 'package:partaiperindo_webdev1/pages/ourfuture.dart';
import 'package:partaiperindo_webdev1/pages/readNews.dart';

import 'sources/strings.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatefulWidget
{
  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '${StringTitle}',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
      routes: <String, WidgetBuilder>
      {
        '/about': (BuildContext context)=> new AboutUs(),
        '/home': (BuildContext context)=> new IndexPage(),
        '/news': (BuildContext context)=> new News(),
        '/ourfuture': (BuildContext context)=> new OurFuture(),
        '/readnews': (BuildContext context)=> new ReadNews(),
      },
    );
  }
}