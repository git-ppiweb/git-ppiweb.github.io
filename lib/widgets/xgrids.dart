import 'package:flutter_web/material.dart';

import 'package:partaiperindo_webdev1/pages/readNews.dart';

import 'package:partaiperindo_webdev1/sources/doubles.dart';
import 'package:partaiperindo_webdev1/sources/jsonAboutUs.dart';
import 'package:partaiperindo_webdev1/sources/jsonNews.dart';
import 'package:partaiperindo_webdev1/sources/jsonOurFuture.dart';
import 'package:partaiperindo_webdev1/sources/strings.dart';

import 'package:partaiperindo_webdev1/widgets/xobjects.dart';

Widget pageGridDewanPimpinanPusat1(BuildContext context, ScrollController _scrollController)
{
  List<Container> clDewanPimpinanPusat1 = new List();
  List lDewanPimpinanPusat1 = dataJsonAboutUs_DewanPimpinanPusat1;

  for (var i = 0; i < lDewanPimpinanPusat1.length; i++)
  {
    clDewanPimpinanPusat1.add(
      Container(
        child: Wrap(
          children: <Widget>[
            Container(
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(0.0),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 0.25,
                child: InkWell(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            (
                                lDewanPimpinanPusat1[i]["urlphoto"].toString().isEmpty
                                    ? Image.asset(StringPhoto0022, fit: BoxFit.contain,)
                                    : Image.network(lDewanPimpinanPusat1[i]["urlphoto"].toString(), fit: BoxFit.cover,)
                            ),
                          ],
                          fit: StackFit.expand,
                        ),
                        height: 105.0,
                        width: 105.0,
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                lDewanPimpinanPusat1[i]["jabatan"].toString().toUpperCase(),
                                style: TextStyle(
                                  fontFamily: StringFontFamily,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),

                              Padding(padding: EdgeInsets.all(5.0),),

                              Text(
                                lDewanPimpinanPusat1[i]["namalengkap"].toString().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.indigo[900],
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          padding: EdgeInsets.only(
                              left: 10.0,
                              right: 10.0
                          ),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  onTap: (){
                    print("Click => " + lDewanPimpinanPusat1[i]["namalengkap"].toString());
                  },
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clDewanPimpinanPusat1,
          childAspectRatio: 2.50,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      bottom: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridDewanPimpinanPusat2(BuildContext context, ScrollController _scrollController)
{
  List<Container> clDewanPimpinanPusat2 = new List();
  List lDewanPimpinanPusat2 = dataJsonAboutUs_DewanPimpinanPusat2;

  for (var i = 0; i < lDewanPimpinanPusat2.length; i++)
  {
    clDewanPimpinanPusat2.add(
      Container(
        child: Wrap(
          children: <Widget>[
            Container(
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(0.0),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 0.25,
                child: InkWell(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            (
                                lDewanPimpinanPusat2[i]["urlphoto"].toString().isEmpty
                                    ? Image.asset(StringPhoto0022, fit: BoxFit.contain,)
                                    : Image.network(lDewanPimpinanPusat2[i]["urlphoto"].toString(), fit: BoxFit.cover,)
                            ),
                          ],
                          fit: StackFit.expand,
                        ),
                        height: 105.0,
                        width: 105.0,
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                lDewanPimpinanPusat2[i]["jabatan"].toString().toUpperCase(),
                                style: TextStyle(
                                  fontFamily: StringFontFamily,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),

                              Padding(padding: EdgeInsets.all(5.0),),

                              Text(
                                lDewanPimpinanPusat2[i]["namalengkap"].toString().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.indigo[900],
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          padding: EdgeInsets.only(
                              left: 10.0,
                              right: 10.0
                          ),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  onTap: (){
                    print("Click => " + lDewanPimpinanPusat2[i]["namalengkap"].toString());
                  },
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clDewanPimpinanPusat2,
          childAspectRatio: 2.50,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      top: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      bottom: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridDewanPimpinanPusat3(BuildContext context, ScrollController _scrollController)
{
  List<Container> clDewanPimpinanPusat3 = new List();
  List lDewanPimpinanPusat3 = dataJsonAboutUs_DewanPimpinanPusat3;

  for (var i = 0; i < lDewanPimpinanPusat3.length; i++)
  {
    clDewanPimpinanPusat3.add(
      Container(
        child: Wrap(
          children: <Widget>[
            Container(
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(0.0),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 0.25,
                child: InkWell(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            (
                                lDewanPimpinanPusat3[i]["urlphoto"].toString().isEmpty
                                    ? Image.asset(StringPhoto0022, fit: BoxFit.contain,)
                                    : Image.network(lDewanPimpinanPusat3[i]["urlphoto"].toString(), fit: BoxFit.cover,)
                            ),
                          ],
                          fit: StackFit.expand,
                        ),
                        height: 105.0,
                        width: 105.0,
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                lDewanPimpinanPusat3[i]["jabatan"].toString().toUpperCase(),
                                style: TextStyle(
                                  fontFamily: StringFontFamily,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),

                              Padding(padding: EdgeInsets.all(5.0),),

                              Text(
                                lDewanPimpinanPusat3[i]["namalengkap"].toString().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.indigo[900],
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          padding: EdgeInsets.only(
                              left: 10.0,
                              right: 10.0
                          ),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  onTap: (){
                    print("Click => " + lDewanPimpinanPusat3[i]["namalengkap"].toString());
                  },
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clDewanPimpinanPusat3,
          childAspectRatio: 2.50,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      top: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      bottom: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridMahkamahPartai(BuildContext context, ScrollController _scrollController)
{
  List<Container> clMahkamahPartai = new List();
  List lMahkamahPartai = dataJsonAboutUs_MahkamahPartai;

  for (var i = 0; i < lMahkamahPartai.length; i++)
  {
    clMahkamahPartai.add(
      Container(
        child: Material(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(0.0),
          ),
          clipBehavior: Clip.antiAlias,
          elevation: 0.25,
          child: InkWell(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        (
                          lMahkamahPartai[i]["urlphoto"].toString().isEmpty
                          ? Image.asset(StringPhoto0022, fit: BoxFit.contain,)
                          : Image.network(lMahkamahPartai[i]["urlphoto"].toString(), fit: BoxFit.cover,)
                        ),
                      ],
                      fit: StackFit.expand,
                    ),
                  ),
                ),

                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        lMahkamahPartai[i]["jabatan"].toString().toUpperCase(),
                        style: TextStyle(
                          fontFamily: StringFontFamily,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 2,
                        softWrap: false,
                        textAlign: TextAlign.center,
                      ),

                      Text(
                        lMahkamahPartai[i]["namalengkap"].toString().toUpperCase(),
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontFamily: StringFontFamily,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 2,
                        softWrap: false,
                        textAlign: TextAlign.center,
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  height: 64.0,
                  padding: EdgeInsets.all(5.0),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            onTap: (){
              print("Click => " + lMahkamahPartai[i]["namalengkap"].toString());
            },
          ),
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clMahkamahPartai,
          childAspectRatio: 0.65,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),

        // Back to Top
        InkWell(
          child: Container(
            child: Column(
              children: <Widget>[
                Spacer(),

                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_upward,
                      size: 14.0,
                    ),

                    Padding(padding: EdgeInsets.all(5.0),),

                    Text(
                      StringLabel026.toUpperCase(),
                      style: TextStyle(
                        fontFamily: StringFontFamily,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.left,
                    ),

                    Spacer(),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
            height: (
                MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
            ) ? 45.0 : 65.0,
          ),
          onTap: (){
            print("Click go to top.");
            _scrollController.animateTo(
                0.0,
                curve: Curves.linear,
                duration: Duration (milliseconds: 500)
            );
          },
        ),
        // End of Back to Top
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      bottom: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridMajelisPersatuanPartai(BuildContext context, ScrollController _scrollController)
{
  List<Container> clMajelisPersatuanPartai = new List();
  List lMajelisPersatuanPartai = dataJsonAboutUs_MajelisPersatuanPartai;

  for (var i = 0; i < lMajelisPersatuanPartai.length; i++)
  {
    clMajelisPersatuanPartai.add(
      Container(
        child: Material(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(0.0),
          ),
          clipBehavior: Clip.antiAlias,
          elevation: 0.25,
          child: InkWell(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        (
                          lMajelisPersatuanPartai[i]["urlphoto"].toString().isEmpty
                          ? Image.asset(StringPhoto0022, fit: BoxFit.contain,)
                          : Image.network(lMajelisPersatuanPartai[i]["urlphoto"].toString(), fit: BoxFit.cover,)
                        ),
                      ],
                      fit: StackFit.expand,
                    ),
                  ),
                ),

                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        lMajelisPersatuanPartai[i]["jabatan"].toString().toUpperCase(),
                        style: TextStyle(
                          fontFamily: StringFontFamily,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 2,
                        softWrap: false,
                        textAlign: TextAlign.center,
                      ),

                      Text(
                        lMajelisPersatuanPartai[i]["namalengkap"].toString().toUpperCase(),
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontFamily: StringFontFamily,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 2,
                        softWrap: false,
                        textAlign: TextAlign.center,
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  height: 64.0,
                  padding: EdgeInsets.all(5.0),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            onTap: (){
              print("Click => " + lMajelisPersatuanPartai[i]["namalengkap"].toString());
            },
          ),
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clMajelisPersatuanPartai,
          childAspectRatio: 0.65,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      bottom: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridMisiPartaiPerindo(BuildContext context, ScrollController _scrollController)
{
  List<Container> clMisiPartaiPerindo = new List();
  List lMisiPartaiPerindo = dataJsonOurFuture_MisiPartaiPerindo;

  for (var i = 0; i < lMisiPartaiPerindo.length; i++)
  {
    clMisiPartaiPerindo.add(
      Container(
        child: Material(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
          clipBehavior: Clip.antiAlias,
          color: Colors.white,
          elevation: 0.25,
          child: InkWell(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    lMisiPartaiPerindo[i]["data"][0]["label"].toString().toUpperCase(),
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: StringFontFamily,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 1,
                    softWrap: false,
                    textAlign: TextAlign.left,
                  ),

                  Text(
                    lMisiPartaiPerindo[i]["data"][1]["label"].toString().toUpperCase(),
                    style: TextStyle(
                      color: Colors.red[900],
                      fontFamily: StringFontFamily,
                      fontSize: (
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                      ) ? 32 : 40.0,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 1,
                    softWrap: false,
                    textAlign: TextAlign.left,
                  ),

                  Padding(
                    padding: EdgeInsets.all(
                      (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                      ) ? 5.0 : 10.0
                    ),
                  ),

                  Text(
                    lMisiPartaiPerindo[i]["data"][2]["label"].toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: StringFontFamily,
                      fontSize: (
                        (
                          MediaQuery.of(context).size.width <= dWidthMin_Mac160 ||
                          MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
                          MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
                          MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
                          (MediaQuery.of(context).size.width > 670.0 && MediaQuery.of(context).size.width <= 1044.0)
                        ) ? 12.0 : (
                          (
                            (MediaQuery.of(context).size.width > dWidthMin_Mac640 && MediaQuery.of(context).size.width <= 670.0) ||
                            (MediaQuery.of(context).size.width > 940.0 && MediaQuery.of(context).size.width <= 1010.0) ||
                            (MediaQuery.of(context).size.width > 1044.0 && MediaQuery.of(context).size.width <= 1170.0)
                          ) ? 14.0 : (
                            (
                              (MediaQuery.of(context).size.width > 670.0 && MediaQuery.of(context).size.width <= 770.0)// ||
                              //(MediaQuery.of(context).size.width > 1010.0 && MediaQuery.of(context).size.width <= 1170.0)
                            ) ? 16.0 : 18.0
                          )
                        )
                      ),
                      fontWeight: FontWeight.w300,
                    ),
                    //maxLines: 6,
                    // maxLines: (
                    //   MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 3 : (
                    //       MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 3 : (
                    //           MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 4 : 4
                    //       )
                    //   )
                    // ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              padding: EdgeInsets.all(25.0),
            ),
            onTap: (){
              print("Click => " + lMisiPartaiPerindo[i]["namalengkap"].toString());
            },
          ),
        ),
        margin: EdgeInsets.all(3.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        // Title
        Container(
          child: Column(
            children: <Widget>[
              Text(
                StringLabel038.toUpperCase() + " " + MediaQuery.of(context).size.width.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: StringFontFamily,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w300,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),

              Padding(padding: EdgeInsets.all(5.0),),

              Container(color: Colors.grey, height: 1.0, width: 125.0,),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          height: 100.0,
          alignment: Alignment.center,
          //color: Colors.amber,
        ),
        // End of Title

        Padding(padding: EdgeInsets.all(10.0)),

        GridView.count(
          children: clMisiPartaiPerindo,
          //childAspectRatio: 0.65,
          crossAxisCount: (
            MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
              MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 || MediaQuery.of(context).size.width <= 872 ? 2 : 3
              // (
              //   MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
              // )
            )
          ),
          crossAxisSpacing: 25.0,
          mainAxisSpacing: 25.0,
          primary: false,
          shrinkWrap: true,
        ),

        // Back to Top
        InkWell(
          child: Container(
            child: Column(
              children: <Widget>[
                Spacer(),

                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_upward,
                      size: 14.0,
                    ),

                    Padding(padding: EdgeInsets.all(5.0),),

                    Text(
                      StringLabel026.toUpperCase(),
                      style: TextStyle(
                        fontFamily: StringFontFamily,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.left,
                    ),

                    Spacer(),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
            height: (
                MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
            ) ? 45.0 : 65.0,
          ),
          onTap: (){
            print("Click go to top.");
            _scrollController.animateTo(
                0.0,
                curve: Curves.linear,
                duration: Duration (milliseconds: 500)
            );
          },
        ),
        // End of Back to Top
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      top: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      bottom: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridLeafTitleDewanPimpinanPusat(BuildContext context, ScrollController _scrollController)
{
  List<Container> clTitle = new List();
  List lTitle = dataJsonAboutUs_TitleDewanPimpinanPusat;

  for (var i = 0; i < lTitle.length; i++)
  {
    clTitle.add(
      Container(
        child: Wrap(
          children: <Widget>[
            Container(
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(15.0),
                ),
                clipBehavior: Clip.antiAlias,
                color: Colors.indigo[900],
                elevation: 0.25,
                child: InkWell(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 55.0,
                        width: 1.0,
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                lTitle[i]["label"].toString().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  onTap: (){
                    print("Click => " + lTitle[i]["label"].toString());
                  },
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clTitle,
          childAspectRatio: 4,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      top: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridLeafTitleMahkamahPartai(BuildContext context, ScrollController _scrollController)
{
  List<Container> clTitle = new List();
  List lTitle = dataJsonAboutUs_TitleMahkamahPartai;

  for (var i = 0; i < lTitle.length; i++)
  {
    clTitle.add(
      Container(
        child: Wrap(
          children: <Widget>[
            Container(
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(15.0),
                ),
                clipBehavior: Clip.antiAlias,
                color: Colors.indigo[900],
                elevation: 0.25,
                child: InkWell(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 55.0,
                        width: 1.0,
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                lTitle[i]["label"].toString().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  onTap: (){
                    print("Click => " + lTitle[i]["label"].toString());
                  },
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clTitle,
          childAspectRatio: 4,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      top: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridLeafTitleMajelisPersatuanPartai(BuildContext context, ScrollController _scrollController)
{
  List<Container> clTitle = new List();
  List lTitle = dataJsonAboutUs_TitleMajelisPersatuanPartai;

  for (var i = 0; i < lTitle.length; i++)
  {
    clTitle.add(
      Container(
        child: Wrap(
          children: <Widget>[
            Container(
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(15.0),
                ),
                clipBehavior: Clip.antiAlias,
                color: Colors.indigo[900],
                elevation: 0.25,
                child: InkWell(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 55.0,
                        width: 1.0,
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                lTitle[i]["label"].toString().toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  onTap: (){
                    print("Click => " + lTitle[i]["label"].toString());
                  },
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        GridView.count(
          children: clTitle,
          childAspectRatio: 4,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          //crossAxisSpacing: 10.0,
          //mainAxisSpacing: 10.0,
          primary: false,
          shrinkWrap: true,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
      top: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 15.0 : 50.0,
    ),
  );
}

Widget pageGridNews(BuildContext context, ScrollController _scrollController)
{
  List<Container> clNews = new List();
  List lNews = dataJsonNews;

  for (var i = 1; i < lNews.length; i++)
  {
    clNews.add(
      Container(
        child: Material(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
          clipBehavior: Clip.antiAlias,
          color: Colors.white,
          elevation: 0.25,
          child: InkWell(
            child: Container(
              child: Column(
                children: <Widget>[
                  // Tag
                  Text(
                    StringLabel024.toUpperCase(),
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: StringFontFamily,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: false,
                    textAlign: TextAlign.left,
                  ),
                  // End of Tag

                  Padding(padding: EdgeInsets.all(5.0),),

                  // Judul Berita
                  Text(
                    lNews[i]["title"].toString(),
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontFamily: StringFontFamily,
                      fontSize: (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPad
                      ) ? 14.0 : 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                  // End of Judul Berita

                  Padding(padding: EdgeInsets.all(5.0),),

                  // News Photo
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(3),
                        bottomRight: Radius.circular(3),
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3)
                      ),
                      clipBehavior: Clip.antiAlias,
                      elevation: 0.0,
                      child: Container(
                        child: Stack(
                          children: <Widget>[
                            Image.network(
                              lNews[i]["urlphoto"].toString(),
                              fit: BoxFit.cover,
                            ),
                          ],
                          fit: StackFit.expand,
                        ),
                        height: MediaQuery.of(context).size.width / 8,
                      ),
                    ),
                  ),
                  // End of News Photo

                  iVisibility1(
                    child: Padding(padding: EdgeInsets.all(5.0),),
                    visibility: (
                        MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac800 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120
                    ) ? "gone" : "visible",
                  ),

                  // News
                  iVisibility1(
                    child: Text(
                      lNews[i]["news"].toString(),
                      maxLines: 3,
                      style: TextStyle(
                        fontFamily: StringFontFamily,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                    visibility: (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
                      MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640
                      //MediaQuery.of(context).size.width <= dWidthMin_Mac800 ||
                      //MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120
                    ) ? "gone" : "visible",
                  ),
                  // End of News
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              padding: EdgeInsets.all(15.0),
            ),
            onTap: (){
              print("Click news.");
            },
          ),
        ),
        margin: EdgeInsets.all(5.0),
      ),
    );
  }

  return Container(
    child: Column(
      children: <Widget>[
        // News Headline -> on smartphone
        iVisibility1(
          child: Container(
            child: Material(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              elevation: 0.0,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    // Image Headline
                    Image.network(
                      lNews[0]["urlphoto"].toString(),
                      fit: BoxFit.cover,
                    ),
                    // End of Image Headline

                    // Linear Gradient
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment(0.0, 0.75), // 10% of the width, so there are ten blinds.
                          colors: [
                            const Color(0xFFFFFFFF).withOpacity(0.0),
                            //const Color(0xFFFFFFFF).withOpacity(0.15),
                            //const Color(0xFFFFFFFF).withOpacity(0.25),
                            //const Color(0xFFFFFFFF).withOpacity(0.50),
                            const Color(0xFF283593).withOpacity(0.15),
                            const Color(0xFF283593).withOpacity(0.35),
                            const Color(0xFF1A237E).withOpacity(0.50)
                          ], // whitish to gray
                          tileMode: TileMode.repeated, // repeats the gradient over the canvas
                        ),
                      ),
                    ),
                    // End of Linear Gradient

                    // Captions
                    Container(
                      child: Column(
                        children: <Widget>[
                          // Tag
                          Text(
                            StringLabel024.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: StringFontFamily,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                            softWrap: false,
                            textAlign: TextAlign.left,
                          ),
                          // End of Tag

                          Padding(padding: EdgeInsets.all(5.0),),

                          // Judul Berita
                          Text(
                            lNews[0]["title"].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: StringFontFamily,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300,
                            ),
                            maxLines: 2,
                            softWrap: true,
                            textAlign: TextAlign.left,
                          ),
                          // End of Judul Berita
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      padding: EdgeInsets.all(15.0),
                    ),
                    // End of Captions
                  ],
                  fit: StackFit.expand,
                ),
              ),
            ),
            height: (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                    ? (MediaQuery.of(context).size.height / 3) : (
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                        ? (MediaQuery.of(context).size.height / 3) : (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                            ? (MediaQuery.of(context).size.height / 3) : (
                            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                                ? (MediaQuery.of(context).size.height / 3) : (
                                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                    ? (MediaQuery.of(context).size.height / 3) : (
                                    MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                        ? (MediaQuery.of(context).size.height / 2) : (
                                        MediaQuery.of(context).size.width <= dWidthMin_iPad
                                            ? (MediaQuery.of(context).size.width / 2) : (MediaQuery.of(context).size.width / 3)
                                    )
                                )
                            )
                        )
                    )
                )
            ),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          visibility: (
            MediaQuery.of(context).size.width <= dWidthMin_Mac160 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPad ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac800
          ) ? "visible" : "gone",
        ),
        // End of News Headline -> on smartphone

        // News Headline -> iPad, Tablet and Desktop
        iVisibility1(
          child: Container(
            child: Material(
              borderRadius: BorderRadius.only(
                bottomLeft: (
                  MediaQuery.of(context).size.width > dWidthMin_Mac640 &&
                  (
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  )
                ) ? Radius.circular(0.0) : Radius.circular(5.0),
                bottomRight: (
                  MediaQuery.of(context).size.width > dWidthMin_Mac640 &&
                  (
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  )
                ) ? Radius.circular(0.0) : Radius.circular(5.0),
                topLeft: (
                  MediaQuery.of(context).size.width > dWidthMin_Mac640 &&
                  (
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  )
                ) ? Radius.circular(0.0) : Radius.circular(5.0),
                topRight: (
                  MediaQuery.of(context).size.width > dWidthMin_Mac640 &&
                  (
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  )
                ) ? Radius.circular(0.0) : Radius.circular(5.0),
              ),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              elevation: (
                  MediaQuery.of(context).size.width > dWidthMin_Mac640 &&
                  (
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  )
                ) ? 0.0 : 0.25,
              child: InkWell(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Material(
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                              child: Stack(
                                children: <Widget>[
                                  // Image Header
                                  Image.network(
                                    lNews[0]["urlphoto"].toString(),
                                    fit: BoxFit.cover,
                                  ),
                                  // End of Image Header
                                ],
                                fit: StackFit.expand,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              // Tag
                              Text(
                                StringLabel024.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                softWrap: false,
                                textAlign: TextAlign.left,
                              ),
                              // End of Tag

                              // Judul Berita
                              Text(
                                lNews[0]["title"].toString(),
                                style: TextStyle(
                                  color: Colors.indigo[900],
                                  fontFamily: StringFontFamily,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                              // End of Judul Berita

                              Padding(padding: EdgeInsets.all(10.0),),

                              // News
                              Text(
                                lNews[0]["news"].toString(),
                                style: TextStyle(
                                  //color: Colors.indigo[900],
                                  fontFamily: StringFontFamily,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: (
                                  (MediaQuery.of(context).size.width <= dWidthMin_iPad)
                                  ? 10 : (
                                    (MediaQuery.of(context).size.width <= 1245.0)
                                    ? 9 : 13
                                  )
                                ),
                                //maxLines: 10,
                                softWrap: true,
                                textAlign: TextAlign.justify,
                              ),
                              // End of News
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                          ),
                          padding: EdgeInsets.all(15.0),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ),
                onTap: (){
                  print("Click news.");
                  // Navigator.pushNamed(context, "/readnews").whenComplete((){
                  //   Navigator.pop(context);
                  // });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> ReadNews(
                        id: lNews[0]["id"].toString(),
                        judulBerita: lNews[0]["title"].toString(),
                        isiBerita: lNews[0]["news"].toString(),
                        urlPhoto: lNews[0]["urlphoto"].toString(),
                      ),
                    ),
                  ).whenComplete((){
                    Navigator.pop(context);
                  });
                },
              ),
            ),
            height: (
              (
                MediaQuery.of(context).size.width > dWidthMin_Mac800 &&
                (
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                )
              )
              ? MediaQuery.of(context).size.width / 2.50 : MediaQuery.of(context).size.width / 3.0
            ),
            width: MediaQuery.of(context).size.width,
            margin: (
              MediaQuery.of(context).size.width > dWidthMin_Mac640 &&
              (
                MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                MediaQuery.of(context).size.width <= dWidthMin_iPadPro
              )
            ) ? EdgeInsets.all(0.0) : EdgeInsets.all(5.0),
          ),
          visibility: (
            MediaQuery.of(context).size.width <= dWidthMin_Mac160 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPad ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac800
          ) ? "gone" : "visible",
        ),
        // End of News Headline -> iPad, Tablet and Desktop

        iVisibility1(
          child: Padding(padding: EdgeInsets.all(15.0),),
          visibility: (
            MediaQuery.of(context).size.width <= dWidthMin_Mac160 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPad ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac800
          ) ? "gone" : "visible",
        ),

        GridView.count(
          children: clNews,
          //childAspectRatio: 4,
          crossAxisCount: (
              MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
                  MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                      MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
                  )
              )
          ),
          primary: false,
          shrinkWrap: true,
          padding: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? EdgeInsets.all(10.0) : EdgeInsets.all(0.0),
        ),

        // Back to Top
        InkWell(
          child: Container(
            child: Column(
              children: <Widget>[
                iVisibility1(
                  child: Spacer(),
                  visibility: (
                    MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  ) ? "visible" : "gone",
                ),

                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_upward,
                      size: 14.0,
                    ),

                    Padding(padding: EdgeInsets.all(5.0),),

                    Text(
                      StringLabel026.toUpperCase(),
                      style: TextStyle(
                        fontFamily: StringFontFamily,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.left,
                    ),

                    Spacer(),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: (
                MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                MediaQuery.of(context).size.width <= dWidthMin_iPadPro
              ) ? MainAxisAlignment.center : MainAxisAlignment.end,
            ),
            height: (
                MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
            ) ? 45.0 : 65.0,
            padding: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
            ) ? EdgeInsets.only(left: 15.0, right: 15.0,) : EdgeInsets.only(left: 0.0, right: 0.0,),
          ),
          onTap: (){
            print("Click go to top.");
            _scrollController.animateTo(
                0.0,
                curve: Curves.linear,
                duration: Duration (milliseconds: 500)
            );
          },
        ),
        // End of Back to Top

        Padding(padding: EdgeInsets.all(5.0),),
        iVisibility1(
          child: Padding(padding: EdgeInsets.all(5.0),),
          visibility: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "visible" : "gone",
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    padding: EdgeInsets.only(
      left: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 0.0 : 50.0,
      right: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 0.0 : 50.0,
      top: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 0.0 : 50.0,
      bottom: (
          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
              MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
              MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
              MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
      ) ? 0.0 : 50.0,
    ),
  );
}