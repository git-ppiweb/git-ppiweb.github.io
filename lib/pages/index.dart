import 'package:flutter_web/material.dart';

//import 'package:http/http.dart' as http;
//import 'dart:html';

import 'package:partaiperindo_webdev1/sources/doubles.dart';
//import 'package:partaiperindo_webdev1/sources/strings.dart';
//import '../sources/doubles.dart';
//import '../sources/strings.dart';

import 'package:partaiperindo_webdev1/widgets/xcards.dart';
import 'package:partaiperindo_webdev1/widgets/xheaders.dart';
//import 'package:partaiperindo_webdev1/widgets/xobjects.dart';
//import '../widgets/xcards.dart';
//import '../widgets/xheaders.dart'; #close
//import '../widgets/xobjects.dart';

class IndexPage extends StatefulWidget
{
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>
{
  ScrollController _scrollController;

  @override
  void initState()
  {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      //appBar: AppBar(
        //backgroundColor: Colors.white,
        //elevation: 1.0,
        //leading: Image.asset("images/img_perindo_header1.png", //"icon/nav-icon.png",),
        //title: pageHeader(context),
      //),
      //backgroundColor: Colors.grey,
      //resizeToAvoidBottomPadding: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            // Scroll with ListView
            //ListView(
              //children: <Widget>[
                //Padding(padding: EdgeInsets.all(
                  //(
                    //MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    //MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    //MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  //) ? 32.0 : 57.50
                //),),

                // Stories Slider
                //pageCardSlider1(context),

                // Big Menu
                //pageCardMenu1(context),

                // Aksi Perindo Slider
                //pageCardSlider2(context),
                //pageHeaderShadow(context),

                // Testimoni
                //pageCardTestimoni(context),

                // Social media
                //pageCardSocialMedia(context),

                // News
                //pageCardNews(context),
              //],
              //shrinkWrap: false,
            //),
            // End of Scroll with ListView

            // Scroll Body
            SafeArea(
              child: SingleChildScrollView(
                //primary: true,
                controller: _scrollController,
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(
                      (
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                      ) ? 32.0 : 57.50
                    ),),

                    // Stories Slider
                    pageCardSlider1(context),

                    // Big Menu
                    pageCardMenu1(context),

                    // Aksi Perindo Slider
                    pageCardSlider2(context),
                    pageHeaderShadow(context),

                    // Testimoni
                    pageCardTestimoni(context),

                    // Social media
                    pageCardSocialMedia(context),

                    // News
                    pageCardNews(context, _scrollController),

                    // Footer
                    pageCardFooter(context),

                    //Text(
                      //memo1 + "\n\n" + memo1 + "\n\n" + memo1,
                      //style: TextStyle(
                        //fontFamily: StringFontFamily,
                        //fontSize: 14.0,
                      //),
                      //textAlign: TextAlign.justify,
                    //),
                  ],
                ),
              ),
            ),
            // End of Scroll Body

            // Header
            Wrap(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          pageHeader(context),

                          pageHeaderMenu(context),
                          pageHeaderShadow(context),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      //height: 100.0,
                    ),

                    pageHeaderResponsiveLogo(context),
                  ],
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
            // End of Header
          ],
          fit: StackFit.expand,
        ),
        //padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 15.0,),
      ),
    );
  }
}

//
// All widgets
//

/*Widget pageHeader(BuildContext context)
{
  return Container(
    child: Row(
      children: <Widget>[
        // Leading
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "icon/nav-icon.png",
                fit: BoxFit.cover,
              ),
              onTap: (){
                print("Click leading.");
              },
            ),
            height: 42.0,
            width: 42.0,
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "visible" : "gone",
        ),
        // End of Leading

        // Image Header
        iVisibility1(
          child: Expanded(
            child: Container(
              child: Image.asset("images/img_perindo_header1.png"),
              padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
              alignment: Alignment.center,
            ),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "visible" : "gone",
        ),

        /*iVisibility1(
          child: Container(
            child: Image.asset("images/img_perindo_header1.png"),
            padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),*/
        // End of Image Header

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        //Spacer(),

        // Facebook Button
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "images/img_facebook_grey3_64px.png",
                height: 32.0,
                width: 32.0,
              ),
              onTap: (){
                print("Click facebook.");
              },
            ),
            height: 32.0,
            width: 32.0,
            padding: EdgeInsets.all(3.50),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Facebook Button

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        // Twitter Button
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "images/img_twitter_grey3_64px.png",
                height: 32.0,
                width: 32.0,
              ),
              onTap: (){
                print("Click twitter.");
              },
            ),
            height: 32.0,
            width: 32.0,
            padding: EdgeInsets.all(3.0),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Twitter Button

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        // Instagram Button
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "images/img_instagram_grey3_64px.png",
                height: 32.0,
                width: 32.0,
              ),
              onTap: (){
                print("Click instagram.");
              },
            ),
            height: 32.0,
            width: 32.0,
            padding: EdgeInsets.all(2.50),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Instagram Button

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        // Youtube Button
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "images/img_youtube_grey3_64px.png",
                height: 32.0,
                width: 32.0,
              ),
              onTap: (){
                print("Click youtube.");
              },
            ),
            height: 32.0,
            width: 32.0,
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Youtube Button

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        // Metube Button
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "images/img_metube_grey3_64px.png",
                height: 32.0,
                width: 32.0,
              ),
              onTap: (){
                print("Click metube.");
              },
            ),
            height: 32.0,
            width: 32.0,
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Metube Button

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        // Share Button
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "images/img_share_red1.png",
                height: 32.0,
                //width: 32.0,
              ),
              onTap: (){
                print("Click share.");
              },
            ),
            height: 32.0,
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Share Button

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        // Person Button
        iVisibility1(
          child: Container(
            child: InkWell(
              child: Image.asset(
                "images/img_person_blue3_64px.png",
                height: 32.0,
                width: 32.0,
              ),
              onTap: (){
                print("Click person.");
              },
            ),
            height: 32.0,
            width: 32.0,
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Person Button

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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        // Search Button
        Container(
          child: InkWell(
            child: Image.asset(
              "images/img_search_grey3_64px.png",
              height: 32.0,
              width: 32.0,
            ),
            onTap: (){
              print("Click search.");
            },
          ),
          height: 32.0,
          width: 32.0,
        ),
        // End of Search Button

        iVisibility1(
          child: Padding(padding: EdgeInsets.all(2.50),),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "visible" : "gone",
        ),
      ],
    ),
    height: 65.0,
    color: Colors.white,
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
      ) ? 5.0 : 15.0,
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
      ) ? 5.0 : 15.0,
    ),
  );
}

Widget pageHeaderMenu(BuildContext context)
{
  return iVisibility1(
    child: Container(
      child: Row(
        children: <Widget>[
          // Menu Tentang

          Container(
            child: InkWell(
              child: Text(
                StringMenu001.toUpperCase(),
                style: TextStyle(
                  fontFamily: StringFontFamily,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
                softWrap: true,
              ),
              onTap: (){
                print("Click menu tentang.");
              },
            ),
          ),
          // End of Menu Tentang

          Padding(padding: EdgeInsets.all(10.0),),

          // Menu Aksi Perindo
          Container(
            child: InkWell(
              child: Text(
                StringMenu002.toUpperCase(),
                style: TextStyle(
                  fontFamily: StringFontFamily,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
                softWrap: true,
              ),
              onTap: (){
                print("Click menu aksi perindo.");
              },
            ),
          ),
          // End of Menu Aksi Perindo

          Padding(padding: EdgeInsets.all(10.0),),

          // Menu Masa Depan Milik Kita
          Container(
            child: InkWell(
              child: Text(
                StringMenu003.toUpperCase(),
                style: TextStyle(
                  fontFamily: StringFontFamily,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
                softWrap: true,
              ),
              onTap: (){
                print("Click menu masa depan milik kita.");
              },
            ),
          ),
          // End of Menu Masa Depan Milik Kita

          Padding(padding: EdgeInsets.all(10.0),),

          // Menu Rumah Perindo
          Container(
            child: InkWell(
              child: Text(
                StringMenu004.toUpperCase(),
                style: TextStyle(
                  fontFamily: StringFontFamily,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
                softWrap: true,
              ),
              onTap: (){
                print("Click menu rumah perindo.");
              },
            ),
          ),
          // End of Menu Rumah Perindo

          Padding(padding: EdgeInsets.all(10.0),),

          // Menu Stories
          Container(
            child: InkWell(
              child: Text(
                StringMenu005.toUpperCase(),
                style: TextStyle(
                  fontFamily: StringFontFamily,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
                softWrap: true,
              ),
              onTap: (){
                print("Click menu stories.");
              },
            ),
          ),
          // End of Menu Stories

          Padding(padding: EdgeInsets.all(10.0),),

          // Menu Dukung
          Container(
            child: InkWell(
              child: Text(
                StringMenu006.toUpperCase(),
                style: TextStyle(
                  fontFamily: StringFontFamily,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.right,
                softWrap: true,
              ),
              onTap: (){
                print("Click menu dukung.");
              },
            ),
          ),
          // End of Menu Dukung
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
      ),
      height: 50.0,
      alignment: Alignment.topRight,
      color: Colors.white,
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
        ) ? 5.0 : 15.0,
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
        ) ? 5.0 : 15.0,
        top: 10.0,
      ),
    ),
    visibility: (
        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
            MediaQuery.of(context).size.width <= dWidthMin_iPad ||
            MediaQuery.of(context).size.width <= dWidthMin_iPadPro
    ) ? "gone" : "visible",
  );
}

Widget pageHeaderResponsiveLogo(BuildContext context)
{
  return iVisibility1(
    child: Container(
      child: Image.asset("images/img_perindo_header1.png", height: 55.0,),
      height: (65.0 + 50.0),
      alignment: Alignment.centerLeft,
      //color: Colors.lightBlue,
      padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0.0, top: 0.0,),
    ),
    visibility: (
        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
            MediaQuery.of(context).size.width <= dWidthMin_iPad ||
            MediaQuery.of(context).size.width <= dWidthMin_iPadPro
    ) ? "gone" : "visible",
  );
}

Widget pageHeaderShadow(BuildContext context)
{
  return Container(
    height: 0.50,
    //color: Colors.white,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
      //color: const Color(0xFF66BB6A),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1.0,
        ),
      ],
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
      ) ? 5.0 : 15.0,
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
      ) ? 5.0 : 15.0,
    ),
  );
}*/