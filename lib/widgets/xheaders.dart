import 'package:flutter_web/material.dart';

//import 'package:partaiperindo_webdev1/pages/aboutus.dart';
//import 'package:partaiperindo_webdev1/pages/index.dart';

import 'package:partaiperindo_webdev1/widgets/xobjects.dart';
//import './xobjects.dart';

import 'package:partaiperindo_webdev1/sources/doubles.dart';
import 'package:partaiperindo_webdev1/sources/strings.dart';
//import '../sources/doubles.dart';
//import '../sources/strings.dart';

Widget pageHeader(BuildContext context)
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
              child: Image.asset(StringPhoto0020),
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
            child: Image.asset(StringPhoto0020),
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
                Navigator.pushNamed(context, "/about").whenComplete((){
                  Navigator.pop(context);
                });
                /*Navigator.push(
                  context, new MaterialPageRoute(
                    builder: (ctxt) => new AboutUs()
                  ),
                ).whenComplete((){
                  Navigator.pop(context);
                });*/
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
                Navigator.pushNamed(context, "/news").whenComplete((){
                  Navigator.pop(context);
                });
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
                Navigator.pushNamed(context, "/ourfuture").whenComplete((){
                  Navigator.pop(context);
                });
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
      child: InkWell(
        child: Image.asset(StringPhoto0020, height: 55.0,),
        onTap: (){
          print("Click logo header.");
          Navigator.pushNamed(context, "/").whenComplete((){
            Navigator.pop(context);
          });
          /*Navigator.push(
            context, new MaterialPageRoute(
              builder: (ctxt) => new IndexPage()
          ),
          ).whenComplete((){
            Navigator.pop(context);
          });*/
        },
      ),
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
}