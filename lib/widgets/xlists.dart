import 'package:flutter_web/material.dart';

import 'package:partaiperindo_webdev1/sources/doubles.dart';
import 'package:partaiperindo_webdev1/sources/jsonOurFuture.dart';
import 'package:partaiperindo_webdev1/sources/strings.dart';

import 'package:partaiperindo_webdev1/widgets/xobjects.dart';

Widget pageListsMisiPartaiPerindo(BuildContext context, ScrollController _scrollController)
{
  List lMisiPartaiPerindo = dataJsonOurFuture_MisiPartaiPerindo;

  return Container(
    child: Column(
      children: <Widget>[
        // Title
        Container(
          child: Column(
            children: <Widget>[
              Text(
                StringLabel038.toUpperCase(),
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

        // Separator
        iVisibility1(
          child: Padding(padding: EdgeInsets.all(10.0)),
          visibility: (
            MediaQuery.of(context).size.width <= dWidthMin_Mac160  ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac800 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac960 ||
            MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
            MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
            MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
            MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
          ) ? "visible" : "gone",
        ),
        // End of Separator

        // Misi Partai Perindo
        ListView.builder(
          primary: false,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: lMisiPartaiPerindo == null ? 0 : lMisiPartaiPerindo.length,
          itemBuilder: (context, i) {
            return Container(
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
                            fontSize: 16.0,
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
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300,
                          ),
                          maxLines: 1,
                          softWrap: false,
                          textAlign: TextAlign.left,
                        ),

                        Padding(padding: EdgeInsets.all(5.0),),

                        Text(
                          lMisiPartaiPerindo[i]["data"][2]["label"].toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: StringFontFamily,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                          ),
                          softWrap: true,
                          textAlign: TextAlign.left,
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    padding: EdgeInsets.all(15.0),
                  ),
                  onTap: (){
                    print("Click card misi perindo.");
                  },
                ),
              ),
              margin: EdgeInsets.only(bottom: ((i+1) == lMisiPartaiPerindo.length) ? 0.0 : 15.0),
            );
          }
        ),
        // End of Misi Partai Perindo
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
    ),
    padding: EdgeInsets.all(15.0),
  );
}