import 'package:flutter_web/material.dart';

import 'package:partaiperindo_webdev1/sources/doubles.dart';

import 'package:partaiperindo_webdev1/widgets/xcards.dart';
import 'package:partaiperindo_webdev1/widgets/xgrids.dart';
import 'package:partaiperindo_webdev1/widgets/xheaders.dart';

class News extends StatefulWidget
{
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News>
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
      body: Container(
        child: Stack(
          children: <Widget>[
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

                    // News
                    pageGridNews(context, _scrollController),

                    // Footer
                    pageCardFooter(context),
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
      ),
    );
  }
}