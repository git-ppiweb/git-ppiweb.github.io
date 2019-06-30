import 'package:flutter_web/material.dart';

import 'package:partaiperindo_webdev1/sources/doubles.dart';
import 'package:partaiperindo_webdev1/sources/jsonNews.dart';
import 'package:partaiperindo_webdev1/sources/jsonOurFuture.dart';
import 'package:partaiperindo_webdev1/sources/strings.dart';
//import '../sources/doubles.dart';
//import '../sources/jsonNews.dart';
//import '../sources/strings.dart';

import 'package:partaiperindo_webdev1/widgets/xobjects.dart';
//import '../widgets/xobjects.dart';

Widget cardSocialMedia(BuildContext context, String urlphoto)
{
  return Container(
    child: Column(
      children: <Widget>[
        // Image
        Container(
          child: Stack(
            children: <Widget>[
              // photo background circle
              Container(
                child: ClipRRect(
                  child: Material(
                    color: Colors.white,
                    elevation: 1.0,
                    child: Stack(
                      children: <Widget>[],
                      fit: StackFit.expand,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                    topLeft: Radius.circular(100.0),
                    topRight: Radius.circular(100.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),

                //width: 32.0,
                //height: 32.0,
                height: (MediaQuery.of(context).size.width / 4) - 25.0,
                width: (MediaQuery.of(context).size.width / 4) - 25.0,
              ),
              // end of photo background circle

              // photo
              Container(
                child: ClipRRect(
                  child: Material(
                    color: Colors.white,
                    elevation: 1.0,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          urlphoto,
                          fit: BoxFit.cover,
                          scale: 1,
                        ),
                        /*CachedNetworkImage(
                          imageUrl: sUrlPhotoMyProfile,
                          placeholder: Center(
                            child: Platform.isIOS ? CupertinoActivityIndicator() : Container(child: CircularProgressIndicator(strokeWidth: 1.0, backgroundColor: Colors.blue[900],), width: 14.0, height: 14.0,),
                          ),
                          errorWidget: Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),*/
                      ],
                      fit: StackFit.expand,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                    topLeft: Radius.circular(100.0),
                    topRight: Radius.circular(100.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),

                //width: 125.0,
                //height: 125.0,
                height: (MediaQuery.of(context).size.width / 4) - 25.0,
                width: (MediaQuery.of(context).size.width / 4) - 25.0,
                padding: EdgeInsets.all(1.50),
              ),
              // end of photo
            ],
            alignment: Alignment.center,
          ),
          //width: 125.0,
          //height: 125.0,

          // MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
          // ((MediaQuery.of(context).size.width / 1.50) + 75.0)

          width: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                  ? (MediaQuery.of(context).size.width / 4) : (
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                      ? (MediaQuery.of(context).size.width / 4) : (
                      MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                          ? (MediaQuery.of(context).size.width / 4) : (
                          MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                              ? (MediaQuery.of(context).size.width / 4) : (
                              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                  ? (MediaQuery.of(context).size.width / 4) : (
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                      ? (MediaQuery.of(context).size.width / 4) : (
                                      MediaQuery.of(context).size.width <= dWidthMin_iPad
                                          ? (MediaQuery.of(context).size.width / 4) : 125.0
                                  )
                              )
                          )
                      )
                  )
              )
          ),

          height: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                  ? (MediaQuery.of(context).size.width / 4) : (
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                      ? (MediaQuery.of(context).size.width / 4) : (
                      MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                          ? (MediaQuery.of(context).size.width / 4) : (
                          MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                              ? (MediaQuery.of(context).size.width / 4) : (
                              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                  ? (MediaQuery.of(context).size.width / 4) : (
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                      ? (MediaQuery.of(context).size.width / 4) : (
                                      MediaQuery.of(context).size.width <= dWidthMin_iPad
                                          ? (MediaQuery.of(context).size.width / 4) : 125.0
                                  )
                              )
                          )
                      )
                  )
              )
          ),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
  );
}

Widget cardTestimoni(String namalengkap, String jabatan, String memo, String urlphoto)
{
  return Expanded(
    child: Container(
      child: Column(
        children: <Widget>[
          // Image
          Container(
            child: Stack(
              children: <Widget>[
                // photo background circle
                Container(
                  child: ClipRRect(
                    child: Material(
                      color: Colors.white,
                      elevation: 1.0,
                      child: Stack(
                        children: <Widget>[],
                        fit: StackFit.expand,
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0),
                      topLeft: Radius.circular(100.0),
                      topRight: Radius.circular(100.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),

                  width: 125.0,
                  height: 125.0,
                ),
                // end of photo background circle

                // photo
                Container(
                  child: ClipRRect(
                    child: Material(
                      color: Colors.black,
                      elevation: 1.0,
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            urlphoto,
                            fit: BoxFit.cover,
                            scale: 1,
                          ),
                          /*CachedNetworkImage(
                            imageUrl: sUrlPhotoMyProfile,
                            placeholder: Center(
                              child: Platform.isIOS ? CupertinoActivityIndicator() : Container(child: CircularProgressIndicator(strokeWidth: 1.0, backgroundColor: Colors.blue[900],), width: 14.0, height: 14.0,),
                            ),
                            errorWidget: Icon(Icons.error),
                            fit: BoxFit.cover,
                          ),*/
                        ],
                        fit: StackFit.expand,
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0),
                      topLeft: Radius.circular(100.0),
                      topRight: Radius.circular(100.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),

                  width: 125.0,
                  height: 125.0,
                  padding: EdgeInsets.all(5.0),
                ),
                // end of photo
              ],
              alignment: Alignment.center,
            ),
            width: 125.0,
            height: 125.0,
          ),

          Padding(padding: EdgeInsets.all(5.0),),

          Text(
            namalengkap,
            style: TextStyle(
                fontFamily: StringFontFamily,
                fontSize: 18.0,
                fontWeight: FontWeight.w300
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          Text(
            jabatan,
            style: TextStyle(
                fontFamily: StringFontFamily,
                fontSize: 14.0,
                fontWeight: FontWeight.w300
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),

          Padding(padding: EdgeInsets.all(10.0),),

          Text(
            memo,
            style: TextStyle(
                fontFamily: StringFontFamily,
                fontSize: 14.0,
                fontWeight: FontWeight.w300
            ),
            softWrap: true,
            textAlign: TextAlign.center,
            maxLines: 5,
          ),
          // End of Image
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      padding: EdgeInsets.all(25.0),
    ),
  );
}

Widget cardTestimoni2(BuildContext context, String namalengkap, String jabatan, String memo, String urlphoto)
{
  return Container(
    child: Column(
      children: <Widget>[
        // Image
        Container(
          child: Stack(
            children: <Widget>[
              // photo background circle
              Container(
                child: ClipRRect(
                  child: Material(
                    color: Colors.white,
                    elevation: 1.0,
                    child: Stack(
                      children: <Widget>[],
                      fit: StackFit.expand,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                    topLeft: Radius.circular(100.0),
                    topRight: Radius.circular(100.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),

                height: (MediaQuery.of(context).size.width / 4),
                width: (MediaQuery.of(context).size.width / 4),
              ),
              // end of photo background circle

              // photo
              Container(
                child: ClipRRect(
                  child: Material(
                    color: Colors.black,
                    elevation: 1.0,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          urlphoto,
                          fit: BoxFit.cover,
                          scale: 1,
                        ),
                        /*CachedNetworkImage(
                          imageUrl: sUrlPhotoMyProfile,
                          placeholder: Center(
                            child: Platform.isIOS ? CupertinoActivityIndicator() : Container(child: CircularProgressIndicator(strokeWidth: 1.0, backgroundColor: Colors.blue[900],), width: 14.0, height: 14.0,),
                          ),
                          errorWidget: Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),*/
                      ],
                      fit: StackFit.expand,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                    topLeft: Radius.circular(100.0),
                    topRight: Radius.circular(100.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),

                //width: 125.0,
                //height: 125.0,
                height: (MediaQuery.of(context).size.width / 4),
                width: (MediaQuery.of(context).size.width / 4),
                padding: EdgeInsets.all(5.0),
              ),
              // end of photo
            ],
            alignment: Alignment.center,
          ),
          //width: 125.0,
          //height: 125.0,

          // MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
          // ((MediaQuery.of(context).size.width / 1.50) + 75.0)

          width: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                  ? (MediaQuery.of(context).size.width / 4) : (
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                      ? (MediaQuery.of(context).size.width / 4) : (
                      MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                          ? (MediaQuery.of(context).size.width / 4) : (
                          MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                              ? (MediaQuery.of(context).size.width / 4) : (
                              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                  ? (MediaQuery.of(context).size.width / 4) : (
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                      ? (MediaQuery.of(context).size.width / 4) : (
                                      MediaQuery.of(context).size.width <= dWidthMin_iPad
                                          ? (MediaQuery.of(context).size.width / 4) : 125.0
                                  )
                              )
                          )
                      )
                  )
              )
          ),

          height: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                  ? (MediaQuery.of(context).size.width / 4) : (
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                      ? (MediaQuery.of(context).size.width / 4) : (
                      MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                          ? (MediaQuery.of(context).size.width / 4) : (
                          MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                              ? (MediaQuery.of(context).size.width / 4) : (
                              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                  ? (MediaQuery.of(context).size.width / 4) : (
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                      ? (MediaQuery.of(context).size.width / 4) : (
                                      MediaQuery.of(context).size.width <= dWidthMin_iPad
                                          ? (MediaQuery.of(context).size.width / 4) : 125.0
                                  )
                              )
                          )
                      )
                  )
              )
          ),
        ),

        Padding(padding: EdgeInsets.all(5.0),),

        Text(
          namalengkap,
          style: TextStyle(
              fontFamily: StringFontFamily,
              //fontSize: 18.0,
              fontSize: (
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                      ? 16.0 : (
                      MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                          ? 16.0 : (
                          MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                              ? 16.0 : (
                              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                                  ? 16.0 : (
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                      ? 16.0 : (
                                      MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                          ? 16.0 : (
                                          MediaQuery.of(context).size.width <= dWidthMin_iPad
                                              ? 16.0 : 18.0
                                      )
                                  )
                              )
                          )
                      )
                  )
              ),
              fontWeight: FontWeight.w300
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        Text(
          jabatan,
          style: TextStyle(
              fontFamily: StringFontFamily,
              fontSize: 14.0,
              fontWeight: FontWeight.w300
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),

        Padding(padding: EdgeInsets.all(10.0),),

        Text(
          memo, //StringLabel018 + " " + StringLabel018,
          style: TextStyle(
              fontFamily: StringFontFamily,
              //fontSize: 14.0,
              fontSize: (
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                      ? 12.0 : (
                      MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                          ? 12.0 : (
                          MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                              ? 12.0 : (
                              MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                                  ? 12.0 : (
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                      ? 12.0 : (
                                      MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                          ? 12.0 : (
                                          MediaQuery.of(context).size.width <= dWidthMin_iPad
                                              ? 12.0 : 14.0
                                      )
                                  )
                              )
                          )
                      )
                  )
              ),
              fontWeight: FontWeight.w300
          ),
          softWrap: true,
          textAlign: TextAlign.center,
          //maxLines: 5,
          maxLines: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser //||
              //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
              //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 3 : 5,
        ),
        // End of Image
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
    height: (
        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
            ? (MediaQuery.of(context).size.width - 100.0) : (
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ? (MediaQuery.of(context).size.width - 140.0) : (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                    ? (MediaQuery.of(context).size.width - 150.0) : (
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                        ? (MediaQuery.of(context).size.width - 175.0) : (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                            ? (MediaQuery.of(context).size.width - 180.0) : (
                            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                ? (MediaQuery.of(context).size.width - 240.0) : (
                                MediaQuery.of(context).size.width <= dWidthMin_iPad
                                    ? (MediaQuery.of(context).size.width - 240.0) : (MediaQuery.of(context).size.width - 240.0)
                            )
                        )
                    )
                )
            )
        )
    ),
  );
}

Widget pageCardFooter(BuildContext context)
{
  //const Color(0xFF283593).withOpacity(0.15),
  //const Color(0xFF1A237E).withOpacity(0.50)

  return (
    MediaQuery.of(context).size.width < dWidthMin_iPad
    ? Container(
      child: Column(
        children: <Widget>[
          Text(
            StringLabel029,
            style: TextStyle(
              color: Colors.white,
              fontFamily: StringFontFamily,
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),

          Padding(padding: EdgeInsets.all(5.0),),

          Text(
            (MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser) ? StringLabel042 : StringLabel030,
            style: TextStyle(
              color: Colors.white,
              fontFamily: StringFontFamily,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),

          Padding(padding: EdgeInsets.all(10.0),),

          Text(
            StringLabel033,
            style: TextStyle(
              color: Colors.white,
              fontFamily: StringFontFamily,
              fontSize: 10.0,
              fontWeight: FontWeight.w300,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
      ) ? 150.0 : 200.0,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF283593).withOpacity(1.0),
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
    )
    : Container(
      child: Row(
        children: <Widget>[
          // Footer Menu
          iVisibility1(
            child: Container(
              child: Column(
                children: <Widget>[
                  // row 1
                  Container(
                    child: Row(
                      children: <Widget>[
                        // col 1
                        Column(
                          children: <Widget>[
                            Text(
                              StringMenu001.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: StringFontFamily,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w300,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.left,
                            ),

                            Padding(padding: EdgeInsets.all(10.0),),

                            Text(
                              StringMenu002.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: StringFontFamily,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w300,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.left,
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        // end of col 1

                        //Padding(padding: EdgeInsets.all(5.0),),
                        Spacer(),

                        // col 2
                        Column(
                          children: <Widget>[
                            Text(
                              StringMenu003.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: StringFontFamily,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w300,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.left,
                            ),

                            Padding(padding: EdgeInsets.all(10.0),),

                            Text(
                              StringMenu004.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: StringFontFamily,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w300,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.left,
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        // end of col 2

                        //Padding(padding: EdgeInsets.all(10.0),),
                        Spacer(),

                        // col 3
                        Column(
                          children: <Widget>[
                            Text(
                              StringMenu005.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: StringFontFamily,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w300,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.left,
                            ),

                            Padding(padding: EdgeInsets.all(10.0),),

                            Text(
                              StringMenu006.toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: StringFontFamily,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w300,
                              ),
                              softWrap: true,
                              textAlign: TextAlign.left,
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        // end of col 3
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),

                  Spacer(),

                  // row 2
                  Text(
                    StringLabel027.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: StringFontFamily,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              width: 325.0,
              //color: Colors.lightBlue,
            ),
            visibility: (
                MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser930
            ) ? "gone" : "visible",
          ),
          // End of Footer Menu

          // Separator
          iVisibility1(
            child: Container(
              width: 1.0,
              color: Colors.grey,
              margin: EdgeInsets.only(
                left: 25.0,
                right: 25.0,
              ),
            ),
            visibility: (
                MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser930
            ) ? "gone" : "visible",
          ),
          // End of Separator

          // Address
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    StringLabel029.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: StringFontFamily,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),

                  Spacer(),

                  Text(
                    StringLabel030,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: StringFontFamily,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),

                  Padding(padding: EdgeInsets.all(5.0),),

                  Text(
                    StringLabel031,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: StringFontFamily,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),

                  Padding(padding: EdgeInsets.all(5.0),),

                  Text(
                    StringLabel032,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: StringFontFamily,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
          ),
          // End of Address

          // Footer Social Media
          Container(
            child: Column(
              children: <Widget>[
                // Chat Online
                //const Color(0xFF283593).withOpacity(0.15),
                //const Color(0xFF1A237E).withOpacity(0.50)
                Material(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: const Color(0xFF1A237E).withOpacity(1.0),
                  elevation: 0.0,
                  child: InkWell(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          iCircle1(Colors.green[500], dCircleBullet12, dCircleBullet12),

                          Padding(padding: EdgeInsets.all(5.0),),

                          Text(
                            //"Width : " + MediaQuery.of(context).size.width.toString(),
                            StringLabel028,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: StringFontFamily,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w300,
                            ),
                            softWrap: false,
                            textAlign: TextAlign.left,
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      height: 32.0,
                      width: 100.0,
                    ),
                    onTap: (){
                      print("Click chat online.");
                    },
                  ),
                ),
                // End of Chat Online

                Spacer(),

                // Social Media
                Container(
                  child: Row(
                    children: <Widget>[
                      // Facebook
                      Material(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                        clipBehavior: Clip.antiAlias,
                        color: const Color(0xFF1A237E).withOpacity(1.0),
                        elevation: 0.0,
                        child: InkWell(
                          child: Container(
                            child: Image.asset(
                                StringPhoto0019
                            ),
                            height: 32.0,
                            width: 32.0,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: (){
                            print("Click facebook.");
                          },
                        ),
                      ),
                      // End of Facebook

                      Padding(padding: EdgeInsets.all(5.0),),

                      // Twitter
                      Material(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                        clipBehavior: Clip.antiAlias,
                        color: const Color(0xFF1A237E).withOpacity(1.0),
                        elevation: 0.0,
                        child: InkWell(
                          child: Container(
                            child: Image.asset(
                                StringPhoto0018
                            ),
                            height: 32.0,
                            width: 32.0,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: (){
                            print("Click twitter.");
                          },
                        ),
                      ),
                      // End of Twitter

                      Padding(padding: EdgeInsets.all(5.0),),

                      // Instagram
                      Material(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                        clipBehavior: Clip.antiAlias,
                        color: const Color(0xFF1A237E).withOpacity(1.0),
                        elevation: 0.0,
                        child: InkWell(
                          child: Container(
                            child: Image.asset(
                                StringPhoto0017
                            ),
                            height: 32.0,
                            width: 32.0,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: (){
                            print("Click instagram.");
                          },
                        ),
                      ),
                      // End of Instagram

                      Padding(padding: EdgeInsets.all(5.0),),

                      // YouTube
                      Material(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                        clipBehavior: Clip.antiAlias,
                        color: const Color(0xFF1A237E).withOpacity(1.0),
                        elevation: 0.0,
                        child: InkWell(
                          child: Container(
                            child: Image.asset(
                                StringPhoto0016
                            ),
                            height: 32.0,
                            width: 32.0,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: (){
                            print("Click youtube.");
                          },
                        ),
                      ),
                      // End of YouTube

                      Padding(padding: EdgeInsets.all(5.0),),

                      // Metube
                      Material(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                        clipBehavior: Clip.antiAlias,
                        color: const Color(0xFF1A237E).withOpacity(1.0),
                        elevation: 0.0,
                        child: InkWell(
                          child: Container(
                            child: Image.asset(
                                StringPhoto0015
                            ),
                            height: 32.0,
                            width: 32.0,
                            padding: EdgeInsets.all(5.0),
                          ),
                          onTap: (){
                            print("Click metube.");
                          },
                        ),
                      ),
                      // End of Metube
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  height: 32.0,
                  alignment: Alignment.centerRight,
                  //color: Colors.grey[300],
                ),
                // End of Social Media
              ],
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            width: 200.0,
          ),
          // End of Footer Social Media
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
      ) ? 150.0 : 200.0,
      color: const Color(0xFF283593).withOpacity(1.0),
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
    )
  );
}

Widget pageCardMenu1(BuildContext context)
{
  return Container(
    child: Row(
      children: <Widget>[
        // Image Hary Tanoesoedibjo
        iVisibility1(
          child: Expanded(
            child: Container(
              child: Stack(
                children: <Widget>[
                  // Image
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                      color: const Color(0xFFFFFFFF),
                      image: DecorationImage(
                        image: ExactAssetImage(StringPhoto0001),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                  ),
                  // End of Image

                  // Linear Gradient
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment(0.0, 0.75), // 10% of the width, so there are ten blinds.
                        colors: [
                          const Color(0xFFFFFFFF).withOpacity(0.0),
                          const Color(0xFFFFFFFF).withOpacity(0.15),
                          const Color(0xFFFFFFFF).withOpacity(0.25),
                          const Color(0xFFFFFFFF).withOpacity(0.50),
                          const Color(0xFF283593).withOpacity(0.15),
                          const Color(0xFF1A237E).withOpacity(0.50)
                        ], // whitish to gray
                        tileMode: TileMode.repeated, // repeats the gradient over the canvas
                      ),
                    ),
                  ),
                  // End of Linear Gradient

                  // Captions
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          StringLabel001.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: StringFontFamily,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900,
                          ),
                          softWrap: true,
                          textAlign: TextAlign.left,
                        ),

                        iVisibility1(
                          child: Spacer(),
                          visibility: (
                              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                              //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                          ) ? "gone" : "visible",
                        ),

                        iVisibility1(
                          child: Column(
                            children: <Widget>[
                              Text(
                                StringLabel002,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: StringFontFamily,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),

                              Padding(padding: EdgeInsets.all(10.0),),

                              Text(
                                StringLabel003.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w900,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),

                              Text(
                                StringLabel004.toUpperCase(),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                          visibility: (
                              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                                  MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                              //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                          ) ? "gone" : "visible",
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0, bottom: 15.0,),
                  ),
                  // End of Captions

                  // Footer Liners
                  Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Container()),

                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                                    color: const Color(0xFFB71C1C),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(padding: EdgeInsets.all(5.0),),

                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                                    color: const Color(0xFF212121),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(padding: EdgeInsets.all(5.0),),

                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                                    color: const Color(0xFF212121),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(5.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          height: 5.0,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  // End of Footer Liners
                ],
                fit: StackFit.expand,
              ),

              decoration: BoxDecoration(
                shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                  ),
                ],
              ),
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
                  MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                  //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Image Hary Tanoesoedibjo

        iVisibility1(
          child: Padding(padding: EdgeInsets.all(10.0),),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                  //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),

        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        // Card Dukung Perindo
                        Expanded(
                          child: Container(
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
                                      Container(
                                        child: Image.asset(
                                          StringMenu007IconPath,
                                          height: (
                                            MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          width: (
                                            MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          scale: 1,
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.all(5.0),),

                                      Text(
                                        StringMenu007.toUpperCase(),
                                        style: TextStyle(
                                          fontFamily: StringFontFamily,
                                          fontSize: (
                                              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                                                  ? 12.0 : (
                                                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                                                      ? 12.0 : (
                                                      MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                                                          ? 12.0 : (
                                                          MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                                                              ? 12.0 : (
                                                              MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                                                  ? 12.0 : 16.0
                                                          )
                                                      )
                                                  )
                                              )
                                          ),
                                          fontWeight: FontWeight.w300
                                        ),
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                  // decoration: BoxDecoration(
                                  //   shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                                  //   color: const Color(0xFFFFFFFF),
                                  //   borderRadius: BorderRadius.only(
                                  //     bottomLeft: Radius.circular(5.0),
                                  //     bottomRight: Radius.circular(5.0),
                                  //     topLeft: Radius.circular(5.0),
                                  //     topRight: Radius.circular(5.0),
                                  //   ),
                                  //   boxShadow: [
                                  //     BoxShadow(
                                  //       color: Colors.grey,
                                  //       blurRadius: 1.0,
                                  //     ),
                                  //   ],
                                  // ),
                                ),
                                onTap: (){
                                  print("Click menu.");
                                },
                              ),
                            ),
                          ),
                        ),
                        // End of Card Dukung Perindo

                        Padding(padding: EdgeInsets.all(5.0),),

                        // Card Aksi Perindo
                        Expanded(
                          child: Container(
                            child: Material(
                              borderRadius:BorderRadius.only(
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
                                      Container(
                                        child: Image.asset(
                                          StringMenu008IconPath,
                                          height: (
                                              MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          width: (
                                              MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          scale: 1,
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.all(5.0),),

                                      Text(
                                        StringMenu008.toUpperCase(),
                                        style: TextStyle(
                                            fontFamily: StringFontFamily,
                                            fontSize: (
                                                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                                                    ? 12.0 : (
                                                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                                                        ? 12.0 : (
                                                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                                                            ? 12.0 : (
                                                            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                                                                ? 12.0 : (
                                                                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                                                    ? 12.0 : 16.0
                                                            )
                                                        )
                                                    )
                                                )
                                            ),
                                            fontWeight: FontWeight.w300
                                        ),
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                ),
                                onTap: (){
                                  print("Click news.");
                                },
                              ),
                            ),
                          ),
                        ),
                        // End of Card Aksi Perindo
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.all(5.0),),

                Expanded(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        // Card Masa Depan Milik Kita
                        Expanded(
                          child: Container(
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
                                      Container(
                                        child: Image.asset(
                                          StringMenu009IconPath,
                                          height: (
                                              MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          width: (
                                              MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          scale: 1,
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.all(5.0),),

                                      Text(
                                        StringMenu009.toUpperCase(),
                                        style: TextStyle(
                                            fontFamily: StringFontFamily,
                                            fontSize: (
                                                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                                                    ? 12.0 : (
                                                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                                                        ? 12.0 : (
                                                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                                                            ? 12.0 : (
                                                            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                                                                ? 12.0 : (
                                                                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                                                    ? 12.0 : 16.0
                                                            )
                                                        )
                                                    )
                                                )
                                            ),
                                            fontWeight: FontWeight.w300
                                        ),
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                ),
                                onTap: (){
                                  print("Click news.");
                                },
                              ),
                            ),
                          ),
                        ),
                        // End of Card Masa Depan Milik Kita

                        Padding(padding: EdgeInsets.all(5.0),),

                        // Card Stories or Aku Kamu Kita Perindo
                        Expanded(
                          child: Container(
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
                                      Container(
                                        child: Image.asset(
                                          StringMenu010IconPath,
                                          height: (
                                              MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          width: (
                                              MediaQuery.of(context).size.width >= dWidthMin_iPad || MediaQuery.of(context).size.width >= dWidthMin_iPadPro
                                          ) ? 48.0 : 32.0,
                                          scale: 1,
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.all(5.0),),

                                      Text(
                                        StringMenu010.toUpperCase(),
                                        style: TextStyle(
                                            fontFamily: StringFontFamily,
                                            fontSize: (
                                                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
                                                    ? 12.0 : (
                                                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                                                        ? 12.0 : (
                                                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                                                            ? 12.0 : (
                                                            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                                                                ? 12.0 : (
                                                                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                                                                    ? 12.0 : 16.0
                                                            )
                                                        )
                                                    )
                                                )
                                            ),
                                            fontWeight: FontWeight.w300
                                        ),
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                ),
                                onTap: (){
                                  print("Click news.");
                                },
                              ),
                            ),
                          ),
                        ),
                        // End of Card Stories or Aku Kamu Kita Perindo
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
    height: (
        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
            ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                    ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                        ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                            ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                ? (MediaQuery.of(context).size.width / 1.25) : (
                                MediaQuery.of(context).size.width <= dWidthMin_iPad
                                    ? (MediaQuery.of(context).size.width / 1.25) : (MediaQuery.of(context).size.width / 2.50)
                            )
                        )
                    )
                )
            )
        )
    ),
    width: MediaQuery.of(context).size.width,
    color: Colors.grey[100],
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

Widget pageCardNews(BuildContext context, ScrollController _scrollController)
{
  List<Container> clNews = new List();
  List lNews = dataJsonNews;

  for (var i = 0; i < lNews.length; i++)
  {
    clNews.add(
      Container(
        child: Material(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(3.0),
            bottomRight: Radius.circular(3.0),
            topLeft: Radius.circular(3.0),
            topRight: Radius.circular(3.0),
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
                    softWrap: true,
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
              // decoration: BoxDecoration(
              //   shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
              //   color: const Color(0xFFFFFFFF),
              //   borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(5.0),
              //     bottomRight: Radius.circular(5.0),
              //     topLeft: Radius.circular(5.0),
              //     topRight: Radius.circular(5.0),
              //   ),
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey,
              //       blurRadius: 1.0,
              //     ),
              //   ],
              // ),
              // margin: EdgeInsets.only(
              //   left: 5.0,
              //   right: 5.0,
              //   top: 5.0,
              //   bottom: 5.0,
              // ),
              //margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(10.0),
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
        Text(
          StringLabel025.toUpperCase(),
          style: TextStyle(
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
            ) ? 16.0 : 20.0,
            fontWeight: FontWeight.w300,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),

        Padding(padding: EdgeInsets.all(10.0),),

        Container(
          height: 1.0,
          width: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 100.0 : 150.0,
          color: Colors.grey[300],
        ),

        Padding(padding: EdgeInsets.all(10.0),),

        GridView.count(
          children: clNews,
          crossAxisCount: (
            MediaQuery.of(context).size.width <= dWidthMin_Mac160 || MediaQuery.of(context).size.width <= dWidthMin_Mac320 ? 1 : (
              MediaQuery.of(context).size.width <= dWidthMin_Mac480 || MediaQuery.of(context).size.width <= dWidthMin_Mac640 || MediaQuery.of(context).size.width <= dWidthMin_Mac800 ? 2 : (
                MediaQuery.of(context).size.width <= dWidthMin_Mac960 || MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ? 3 : 4
              )
            )
          ),
          crossAxisSpacing: 0.0,
          primary: false,
          shrinkWrap: true,
        ),

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

Widget pageCardReadNews(BuildContext context, ScrollController _scrollController)
{
  return Container(
    child: Row(
      children: <Widget>[
        // Viewer
        Expanded(
          child: Container(),
        ),
        // End of Viewer

        // Suggest
        Container(
          child: Column(
            children: <Widget>[
              // Title
              Text(
                StringLabel043.toUpperCase(),
                style: TextStyle(
                  fontFamily: StringFontFamily,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              // End of Title

              // Suggest List
              // End of Suggest List
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          height: 100.0,
          width: dWidthMin_Mac480 - 100.0,
        ),
        // End of Suggest
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
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

Widget pageCardSlider1(BuildContext context)
{
  return Container(
    child: Stack(
      children: <Widget>[
        // Images
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
            color: const Color(0xFFFFFFFF),
            image: DecorationImage(
              image: ExactAssetImage(StringPhoto0005),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
        ),
        // End of Images

        // Linear Gradient
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0.0, 0.75), // 10% of the width, so there are ten blinds.
              colors: [
                //const Color(0xFFFFFFFF).withOpacity(0.0),
                //const Color(0xFFFFFFFF).withOpacity(0.15),
                //const Color(0xFFFFFFFF).withOpacity(0.25),
                //const Color(0xFFFFFFFF).withOpacity(0.50),
                const Color(0xFF283593).withOpacity(0.15),
                const Color(0xFF1A237E).withOpacity(0.25),
                const Color(0xFF1A237E).withOpacity(0.50),
                const Color(0xFF1A237E).withOpacity(0.75)
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
              Text(
                StringLabel005.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: StringFontFamily,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300
                ),
                softWrap: true,
                textAlign: TextAlign.left,
              ),

              Padding(padding: EdgeInsets.all(10.0),),

              // Title
              Text(
                StringLabel006,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: StringFontFamily,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300
                ),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
              // End of Title

              //Padding(padding: EdgeInsets.all(10.0),),
              iVisibility1(
                child: Padding(padding: EdgeInsets.all(
                    (
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX //||
                        //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                        //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                    ) ? 5.0 : 10.0
                ),),
                visibility: (
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ) ? "visible" : "visible",
              ),

              // Author
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          // photo background circle
                          Container(
                            child: ClipRRect(
                              child: Material(
                                color: Colors.white,
                                elevation: 1.0,
                                child: Stack(
                                  children: <Widget>[],
                                  fit: StackFit.expand,
                                ),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100.0),
                                bottomRight: Radius.circular(100.0),
                                topLeft: Radius.circular(100.0),
                                topRight: Radius.circular(100.0),
                              ),
                              clipBehavior: Clip.antiAlias,
                            ),

                            width: 32.0,
                            height: 32.0,
                          ),
                          // end of photo background circle

                          // photo
                          Container(
                            child: ClipRRect(
                              child: Material(
                                color: Colors.black,
                                elevation: 1.0,
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      StringPhoto0006
                                    ),
                                    /*CachedNetworkImage(
                                      imageUrl: sUrlPhotoMyProfile,
                                      placeholder: Center(
                                        child: Platform.isIOS ? CupertinoActivityIndicator() : Container(child: CircularProgressIndicator(strokeWidth: 1.0, backgroundColor: Colors.blue[900],), width: 14.0, height: 14.0,),
                                      ),
                                      errorWidget: Icon(Icons.error),
                                      fit: BoxFit.cover,
                                    ),*/
                                  ],
                                  fit: StackFit.expand,
                                ),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100.0),
                                bottomRight: Radius.circular(100.0),
                                topLeft: Radius.circular(100.0),
                                topRight: Radius.circular(100.0),
                              ),
                              clipBehavior: Clip.antiAlias,
                            ),

                            width: 32.0,
                            height: 32.0,
                            padding: EdgeInsets.all(1.50),
                          ),
                          // end of photo
                        ],
                        alignment: Alignment.center,
                      ),
                      width: 32.0,
                      height: 32.0,
                    ),

                    Padding(padding: EdgeInsets.all(5.0),),

                    Text(
                      StringLabel007,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: StringFontFamily,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300
                      ),
                      softWrap: true,
                      textAlign: TextAlign.left,
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
              // End of Author

              iVisibility1(
                child: Padding(padding: EdgeInsets.all(5.0),),
                visibility: (
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ) ? "gone" : "visible",
              ),

              // Memo
              Row(
                children: <Widget>[
                  iVisibility1(
                    child: Expanded(
                      child: Container(
                        child: Text(
                          StringLabel008,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: StringFontFamily,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300
                          ),
                          softWrap: true,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    visibility: (
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX //||
                        //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                        //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                    ) ? "gone" : "visible",
                  ),

                  iVisibility1(
                    child: Padding(padding: EdgeInsets.all(10.0),),
                    visibility: (
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX //||
                            //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                            //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                    ) ? "gone" : "visible",
                  ),

                  iVisibility1(
                    child: Expanded(child: Container(),),
                    visibility: (
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX //||
                            //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                            //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                    ) ? "gone" : "visible",
                  ),
                ],
              ),
              // End of Memo

              iVisibility1(
                child: Padding(padding: EdgeInsets.all(
                  (
                      MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                      MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                      MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                      MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                      MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                      MediaQuery.of(context).size.width <= dWidthMin_iPhoneX //||
                      //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                      //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  ) ? 10.0 : 10.0
                ),),
                visibility: (
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ) ? "visible" : "visible",
              ),

              // Red White Bullets
              iVisibility1(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      iCircle1(Colors.red[900], dCircleBullet12, dCircleBullet12),
                      Padding(padding: EdgeInsets.all(5.0),),
                      iCircle1(Colors.white, dCircleBullet12, dCircleBullet12),
                      Padding(padding: EdgeInsets.all(5.0),),
                      iCircle1(Colors.white, dCircleBullet12, dCircleBullet12),
                      Padding(padding: EdgeInsets.all(5.0),),
                      iCircle1(Colors.white, dCircleBullet12, dCircleBullet12),
                      Padding(padding: EdgeInsets.all(5.0),),
                      iCircle1(Colors.white, dCircleBullet12, dCircleBullet12),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  height: 15.0,
                ),
                visibility: (
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ) ? "visible" : "visible",
              ),
              // End of Red White Bullets
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
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
        ),
        // End of Captions
      ],
      fit: StackFit.expand,
    ),
    height: (
        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
            ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                    ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                        ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                            ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                ? (MediaQuery.of(context).size.width / 1.25) : (
                                MediaQuery.of(context).size.width <= dWidthMin_iPad
                                    ? (MediaQuery.of(context).size.width / 1.25) : (MediaQuery.of(context).size.width / 2.50)
                            )
                        )
                    )
                )
            )
        )
    ),
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
  );
}

Widget pageCardSlider2(BuildContext context)
{
  return Container(
    child: Stack(
      children: <Widget>[
        // Container for Desktop and Responsive Screen
        Container(
          child: Row(
            children: <Widget>[
              // Captions
              iVisibility1(
                child: Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          StringMenu002.toUpperCase(),
                          style: TextStyle(
                            fontFamily: StringFontFamily,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                          ),
                          softWrap: true,
                          textAlign: TextAlign.left,
                        ),

                        Padding(padding: EdgeInsets.all(10.0),),

                        Container(
                          height: 1.0,
                          color: Colors.grey[300],
                        ),

                        Padding(padding: EdgeInsets.all(10.0),),

                        Text(
                          memo1 + " " + memo1,
                          style: TextStyle(
                            fontFamily: StringFontFamily,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                          ),
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          maxLines: (
                            MediaQuery.of(context).size.width < dWidthMin_iPad
                            ? 4 : (
                              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                              ? 5 : (
                                MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser750
                                ? 6 : (
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815
                                  ? 7 : (
                                    MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser1185
                                    ? 8 : (
                                      MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser1245
                                      ? 10 : 12
                                    )
                                  )
                                )
                              )
                            )
                          ),
                        ),
                        Spacer(),

                        // Red White Bullets
                        iVisibility1(
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                iCircle1(Colors.red[900], dCircleBullet12, dCircleBullet12),
                                Padding(padding: EdgeInsets.all(5.0),),
                                iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                                Padding(padding: EdgeInsets.all(5.0),),
                                iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                                Padding(padding: EdgeInsets.all(5.0),),
                                iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                                Padding(padding: EdgeInsets.all(5.0),),
                                iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                            ),
                            height: 15.0,
                          ),
                          visibility: (
                              MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                          ) ? "visible" : "visible",
                        ),
                        // End of Red White Bullets
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0, bottom: 50.0,),
                  ),
                ),
                visibility: (
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815 //||
                        //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                ) ? "gone" : "visible",
              ),
              // End of Captions

              // Image
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                  color: const Color(0xFFFFFFFF),
                  image: DecorationImage(
                    image: ExactAssetImage(StringPhoto0007),
                    fit: BoxFit.cover,
                  ),
                ),
                width: (
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                        MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815 //||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                ) ? (MediaQuery.of(context).size.width) : ((MediaQuery.of(context).size.width/2) + 100.0),
              ),
              // End of Image
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        // End of Container for Desktop and Responsive Screen

        // Linear Gradient
        iVisibility1(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter, //Alignment(0.0, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  //const Color(0xFFFFFFFF).withOpacity(0.0),
                  //const Color(0xFFFFFFFF).withOpacity(0.15),
                  //const Color(0xFFFFFFFF).withOpacity(0.25),
                  //const Color(0xFFFFFFFF).withOpacity(0.50),
                  const Color(0xFF283593).withOpacity(0.15),
                  const Color(0xFF1A237E).withOpacity(0.50),
                  const Color(0xFF1A237E).withOpacity(0.75)
                ], // whitish to gray
                tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815 //||
              //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "visible" : "gone",
        ),
        // End of Linear Gradient

        // Captions
        iVisibility1(
          child: Container(
            child: Column(
              children: <Widget>[
                Spacer(),

                Text(
                  StringMenu002.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: StringFontFamily,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.left,
                ),

                Padding(padding: EdgeInsets.all(10.0),),

                Container(
                  height: 1.0,
                  color: Colors.grey[300],
                ),

                Padding(padding: EdgeInsets.all(10.0),),

                Text(
                  memo1 + " " + memo1,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: StringFontFamily,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  maxLines: (
                      MediaQuery.of(context).size.width < dWidthMin_iPad
                          ? 4 : (
                          MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                              ? 5 : (
                              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser750
                                  ? 6 : (
                                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815
                                      ? 7 : (
                                      MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser1185
                                          ? 8 : (
                                          MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser1245
                                              ? 10 : 12
                                      )
                                  )
                              )
                          )
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0),),
                //Spacer(),

                // Red White Bullets
                iVisibility1(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Spacer(),
                        iCircle1(Colors.red[900], dCircleBullet12, dCircleBullet12),
                        Padding(padding: EdgeInsets.all(5.0),),
                        iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                        Padding(padding: EdgeInsets.all(5.0),),
                        iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                        Padding(padding: EdgeInsets.all(5.0),),
                        iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                        Padding(padding: EdgeInsets.all(5.0),),
                        iCircle1(Colors.grey[300], dCircleBullet12, dCircleBullet12),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    height: 15.0,
                  ),
                  visibility: (
                      MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                  ) ? "visible" : "visible",
                ),
                // End of Red White Bullets
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 15.0,
              bottom: 15.0,
            ),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser815 //||
              //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "visible" : "gone",
        ),
        // End of Captions
      ],
      fit: StackFit.expand,
    ),
    height: (
        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
            ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                    ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                        ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                            ? ((MediaQuery.of(context).size.width / 1.50) + 75.0) : (
                            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                ? (MediaQuery.of(context).size.width / 1.25) : (
                                MediaQuery.of(context).size.width <= dWidthMin_iPad
                                    ? (MediaQuery.of(context).size.width / 1.25) : (MediaQuery.of(context).size.width / 2.75)
                            )
                        )
                    )
                )
            )
        )
    ),
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
  );
}

Widget pageCardSocialMedia(BuildContext context)
{
  return Container(
    child: Column(
      children: <Widget>[
        Text(
          StringLabel022.toUpperCase(),
          style: TextStyle(
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
            ) ? 16.0 : 20.0,
            fontWeight: FontWeight.w300,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),

        Padding(padding: EdgeInsets.all(10.0),),

        Container(
          height: 1.0,
          width: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
            MediaQuery.of(context).size.width <= dWidthMin_iPad ||
            MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 100.0 : 150.0,
          color: Colors.grey[300],
        ),

        //Padding(padding: EdgeInsets.all(10.0),),

        // Social Media on Desktop Version
        iVisibility1(
          child: Expanded(
            child: Container(
              child: Row(
                children: <Widget>[
                  // Facebook
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Facebook",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: StringFontFamily,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      color: Colors.blue[800],
                    ),
                  ),
                  // End of Facebook

                  // Twitter
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Twitter",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: StringFontFamily,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      color: Colors.lightBlue,
                    ),
                  ),
                  // End of Twitter

                  // Instagram
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Instagram",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: StringFontFamily,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      color: Colors.pink,
                    ),
                  ),
                  // End of Instagram
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              padding: EdgeInsets.only(
                left: 50.0,
                right: 50.0,
                top: 50.0,
                bottom: 50.0,
              ),
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
        ),
        // End of Social Media on Desktop Version

        // Social Media on Mobile Version
        iVisibility1(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        StringPhoto0011,
                        height: 64.0,
                        width: 64.0,
                        //height: MediaQuery.of(context).size.width / 5,
                        //width: MediaQuery.of(context).size.width / 5,
                      ),
                      //cardSocialMedia(context, StringPhoto0011),
                      Spacer(),
                      Image.asset(
                        StringPhoto0012,
                        height: 64.0 - 5.0,
                        width: 64.0 - 5.0,
                        //height: (MediaQuery.of(context).size.width / 5) - 10.0,
                        //width: (MediaQuery.of(context).size.width / 5) - 10.0,
                      ),
                      //cardSocialMedia(context, StringPhoto0012),
                      Spacer(),
                      Image.asset(
                        StringPhoto0013,
                        height: 64.0 - 5.0,
                        width: 64.0 - 5.0,
                        //height: (MediaQuery.of(context).size.width / 5) - 10.0,
                        //width: (MediaQuery.of(context).size.width / 5) - 10.0,
                      ),
                      //cardSocialMedia(context, StringPhoto0013),
                      Spacer(),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  //height: 100.0,
                  //height: MediaQuery.of(context).size.width / 4,
                  //alignment: Alignment.center,
                  //color: Colors.lightBlue,
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            padding: EdgeInsets.only(
              top: 25.0,
              bottom: 25.0,
            ),
            /*padding: EdgeInsets.only(
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
            ),*/
            //height: MediaQuery.of(context).size.width / 4,
            //color: Colors.lightBlue,
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
        // End of Social Media on Mobile Version
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
    height: (
        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
            ? (MediaQuery.of(context).size.width / 2) : (
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ? (MediaQuery.of(context).size.width / 2) : (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                    ? (MediaQuery.of(context).size.width / 2) : (
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                        ? (MediaQuery.of(context).size.width / 2) : (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                            ? (MediaQuery.of(context).size.width / 2) : (
                            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                ? (MediaQuery.of(context).size.width / 2) : (
                                MediaQuery.of(context).size.width <= dWidthMin_iPad
                                    ? (MediaQuery.of(context).size.width / 2.50) : (MediaQuery.of(context).size.width / 3.0)
                            )
                        )
                    )
                )
            )
        )
    ),
    width: MediaQuery.of(context).size.width,
    //color: Colors.amber,
  );
}

Widget pageCardTestimoni(BuildContext context)
{
  return Container(
    child: Column(
      children: <Widget>[
        Text(
          StringLabel009.toUpperCase(),
          style: TextStyle(
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
            ) ? 16.0 : 20.0,
            fontWeight: FontWeight.w300,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),

        Padding(padding: EdgeInsets.all(10.0),),

        Container(
          height: 1.0,
          width: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 125.0 : 150.0,
          color: Colors.grey[300],
        ),

        Padding(
          padding: EdgeInsets.all(
            (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPadPro
            ) ? 5.0  : 25.0
          ),
        ),

        // Card Testimoni on Desktop Version
        iVisibility1(
          child: Expanded(
            child: Container(
              child: Row(
                children: <Widget>[
                  cardTestimoni(StringLabel010, StringLabel011, StringLabel018, StringPhoto0008),

                  cardTestimoni(StringLabel007, StringLabel013, StringLabel017, StringPhoto0006),

                  cardTestimoni(StringLabel014, StringLabel015, StringLabel016, StringPhoto0010),
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser //||
                  //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "gone" : "visible",
        ),
        // End of Card Testimoni on Desktop Version

        // Card Testimoni on Mobile Version
        iVisibility1(
          child: Container(
            child: Column(
              children: <Widget>[
                cardTestimoni2(context, StringLabel010, StringLabel011, StringLabel018, StringPhoto0008),

                cardTestimoni2(context, StringLabel007, StringLabel013, StringLabel017, StringPhoto0006),

                cardTestimoni2(context, StringLabel014, StringLabel015, StringLabel016, StringPhoto0010),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
          visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX //||
                  //MediaQuery.of(context).size.width <= dWidthMin_iPad ||
                  //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? "visible" : "gone",
        ),
        // End of Card Testimoni on Mobile Version
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
    height: (
        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
            ? (MediaQuery.of(context).size.width * 3) - (MediaQuery.of(context).size.width / 2) - 50.0 : (
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
                ? (MediaQuery.of(context).size.width * 3) - (MediaQuery.of(context).size.width / 2) - 125.0 : (
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
                    ? (MediaQuery.of(context).size.width * 3) - (MediaQuery.of(context).size.width / 2) - 150.0 : (
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
                        ? (MediaQuery.of(context).size.width * 3) - (MediaQuery.of(context).size.width / 2) - 175.0 : (
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                            ? (MediaQuery.of(context).size.width * 3) - (MediaQuery.of(context).size.width / 2) - 200.0 : (
                            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
                                ? (MediaQuery.of(context).size.width * 3) - (MediaQuery.of(context).size.width / 2) - 300.0 : (
                                MediaQuery.of(context).size.width <= 580.0
                                    ? ((MediaQuery.of(context).size.width / 1.50) + 100.0) : (
                                    MediaQuery.of(context).size.width <= 680.0
                                        ? ((MediaQuery.of(context).size.width / 1.75) + 125.0) : (
                                        MediaQuery.of(context).size.width <= 755.0
                                            ? ((MediaQuery.of(context).size.width / 1.75) + 50.0) : (
                                            MediaQuery.of(context).size.width <= 850.0
                                                ? ((MediaQuery.of(context).size.width / 1.75) + 25.0) : (
                                                MediaQuery.of(context).size.width <= 955.0
                                                    ? ((MediaQuery.of(context).size.width / 1.75) + 0.0) : (
                                                    MediaQuery.of(context).size.width <= 1055.0
                                                        ? ((MediaQuery.of(context).size.width / 1.75) + 0.0) : (
                                                        MediaQuery.of(context).size.width <= 1155.0
                                                            ? ((MediaQuery.of(context).size.width / 2.0) + 0.0) : (
                                                            MediaQuery.of(context).size.width <= 1275.0
                                                                ? ((MediaQuery.of(context).size.width / 2.25) + 0.0) : (MediaQuery.of(context).size.width / 2.50)
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    ),
    width: MediaQuery.of(context).size.width,
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

class pageCardVisiPerindo extends StatefulWidget
{
  @override
  _pageCardVisiPerindoState createState() => _pageCardVisiPerindoState();
}

class _pageCardVisiPerindoState extends State<pageCardVisiPerindo>
{
  var varMemo = dataJsonOurFuture_VisiPerindo["label"].toString();

  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Row(
        children: <Widget>[
          // Visi Partai Perindo
          iVisibility1(
            child: Container(
              child: Column(
                children: <Widget>[
                  // Title
                  Container(
                    child: Text(
                      StringLabel037.toUpperCase(),
                      style: TextStyle(
                        fontFamily: StringFontFamily,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.left,
                    ),
                    height: 50.0,
                    alignment: Alignment.centerLeft,
                  ),
                  // End of Title

                  // Separator
                  Container(height: 1.0, width: 112.0, color: Colors.grey[500], margin: EdgeInsets.only(bottom: 15.0,),),
                  // End of Separator

                  // Visi
                  Text(
                    varMemo,
                    style: TextStyle(
                      fontFamily: StringFontFamily,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.justify,
                  ),
                  // End of Visi
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              width: MediaQuery.of(context).size.width / 3.25,
            ),
            visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
            ) ? "gone" : "visible",
          ),
          // End of Visi Partai Perindo

          // Separator
          iVisibility1(
            child: Padding(padding: EdgeInsets.all(75.0),),
            visibility: (
              MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
            ) ? "gone" : "visible",
          ),
          // End of Separator

          // Video
          Expanded(
            child: Container(
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: (
                    MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  ) ? Radius.circular(0.0) : Radius.circular(15.0),
                  topLeft: (
                    MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                    MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                    MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                    MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                    //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                  ) ? Radius.circular(0.0) : Radius.circular(15.0),
                  topRight: Radius.circular(0.0),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: (
                  MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                  MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                  MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                  MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                  //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
                ) ? 0.0 : 0.50,
                child: InkWell(
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        // Image Video
                        Container(
                          child: Image.asset(
                            StringPhoto0023,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // End of Image Video

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
                              Spacer(),

                              Text(
                                StringLabel039,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: StringFontFamily,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                softWrap: true,
                                textAlign: TextAlign.center,
                              ),

                              Padding(padding: EdgeInsets.all(5.0),),

                              Container(
                                child: Row(
                                  children: <Widget>[
                                    // YouTube
                                    Material(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      color: const Color(0xFFB71C1C).withOpacity(1.0),
                                      //color: const Color(0xFF1A237E).withOpacity(1.0),
                                      elevation: 0.0,
                                      child: InkWell(
                                        child: Container(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Image.asset(
                                                  StringPhoto0016
                                                ),
                                                height: 32.0,
                                                width: 32.0,
                                                padding: EdgeInsets.all(5.0),
                                              ),

                                              Container(
                                                child: Text(
                                                  StringLabel040,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: StringFontFamily,
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  softWrap: true,
                                                  textAlign: TextAlign.left,
                                                ),
                                                padding: EdgeInsets.only(right: 7.50,),
                                              ),
                                            ],
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                          ),
                                          height: 32.0,
                                          //width: 100.0,
                                        ),
                                        onTap: (){
                                          print("Click youtube.");
                                        },
                                      ),
                                    ),
                                    // End of YouTube

                                    Padding(padding: EdgeInsets.all(5.0),),

                                    // Metube
                                    Material(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      color: const Color(0xFFB71C1C).withOpacity(1.0),
                                      //color: const Color(0xFF1A237E).withOpacity(1.0),
                                      elevation: 0.0,
                                      child: InkWell(
                                        child: Container(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Image.asset(
                                                  StringPhoto0015
                                                ),
                                                height: 32.0,
                                                width: 32.0,
                                                padding: EdgeInsets.all(5.0),
                                              ),

                                              Container(
                                                child: Text(
                                                  StringLabel041,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: StringFontFamily,
                                                    fontSize: 11.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  softWrap: true,
                                                  textAlign: TextAlign.left,
                                                ),
                                                padding: EdgeInsets.only(right: 5.0,),
                                              ),
                                            ],
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                          ),
                                          height: 32.0,
                                          //width: 100.0,
                                        ),
                                        onTap: (){
                                          print("Click metube.");
                                        },
                                      ),
                                    ),
                                    // End of Metube
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                height: 32.0,
                              ),

                              Padding(padding: EdgeInsets.all(10.0),),
                            ],
                          ),
                        ),
                        // End of Captions
                      ],
                      alignment: Alignment.center,
                      fit: StackFit.expand,
                    ),
                  ),
                  onTap: (){
                    print("Click video player.");
                  },
                ),
              ),
            ),
          ),
          // End of Video
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
      padding: EdgeInsets.only(
        left: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 0.0 : (
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
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 0.0 : (
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
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 0.0 : (
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
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 0.0 : (
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 15.0 : 50.0,
      ),
    );
  }
}

Widget pageCardVisiPerindo_v2(BuildContext context)
{
  var varMemo = dataJsonOurFuture_VisiPerindo["label"].toString();

  return Container(
    child: Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(15.0),),

        // Title
        Container(
          child: Column(
            children: <Widget>[
              Text(
                StringLabel037.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: StringFontFamily,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),

              Padding(padding: EdgeInsets.all(5.0),),

              Container(color: Colors.grey, height: 1.0, width: 125.0,),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
          ),
          height: 50.0,
          alignment: Alignment.center,
        ),
        // End of Title

        Padding(padding: EdgeInsets.all(5.0),),

        Text(
          varMemo,
          style: TextStyle(
            color: Colors.black,
            fontFamily: StringFontFamily,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),

        Padding(padding: EdgeInsets.all(15.0),),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
    // height: (
    //       MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE
    //           ? (MediaQuery.of(context).size.height / 3) : (
    //           MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5
    //               ? (MediaQuery.of(context).size.height / 3) : (
    //               MediaQuery.of(context).size.width <= dWidthMin_iPhone678 || MediaQuery.of(context).size.width <= dWidthMin_iPhoneX
    //                   ? (MediaQuery.of(context).size.height / 3) : (
    //                   MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2
    //                       ? (MediaQuery.of(context).size.height / 3) : (
    //                       MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
    //                           ? (MediaQuery.of(context).size.height / 3) : (
    //                           MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser
    //                               ? (MediaQuery.of(context).size.height / 2) : (
    //                               MediaQuery.of(context).size.width <= dWidthMin_iPad
    //                                   ? (MediaQuery.of(context).size.width / 2) : (MediaQuery.of(context).size.width / 3)
    //                           )
    //                       )
    //                   )
    //               )
    //           )
    //       )
    //   ),
      width: MediaQuery.of(context).size.width,
      // color: Colors.white,
      padding: EdgeInsets.only(
        left: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 20.0 : (
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 20.0 : 50.0,
        right: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 20.0 : (
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 20.0 : 50.0,
        top: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 20.0 : (
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 20.0 : 50.0,
        bottom: (
            MediaQuery.of(context).size.width <= dWidthMin_ChromeBrowser ||
                MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                MediaQuery.of(context).size.width <= dWidthMin_iPad //||
                //MediaQuery.of(context).size.width <= dWidthMin_iPadPro
        ) ? 20.0 : (
              MediaQuery.of(context).size.width <= dWidthMin_iPadPro
          ) ? 20.0 : 50.0,
      ),
  );
}