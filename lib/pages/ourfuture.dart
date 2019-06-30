import 'package:flutter_web/material.dart';

import 'package:partaiperindo_webdev1/sources/doubles.dart';

import 'package:partaiperindo_webdev1/widgets/xcards.dart';
import 'package:partaiperindo_webdev1/widgets/xgrids.dart';
import 'package:partaiperindo_webdev1/widgets/xheaders.dart';
import 'package:partaiperindo_webdev1/widgets/xlists.dart';
import 'package:partaiperindo_webdev1/widgets/xobjects.dart';

class OurFuture extends StatefulWidget
{
  @override
  _OurFutureState createState() => _OurFutureState();
}

class _OurFutureState extends State<OurFuture>
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

                    // Visi
                    pageCardVisiPerindo(),

                    // Visi -> on smartphone
                    iVisibility1(
                      child: pageCardVisiPerindo_v2(context),
                      visibility: (
                        MediaQuery.of(context).size.width <= dWidthMin_Mac160  ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac800 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac960 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPad
                      ) ? "visible" : "gone",
                    ),

                    // Misi -> on smartphone
                    iVisibility1(
                      child: pageListsMisiPartaiPerindo(context, _scrollController),
                      visibility: (
                        MediaQuery.of(context).size.width <= dWidthMin_Mac160  ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac800 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac960 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                      ) ? "visible" : "gone",
                    ),

                    // Misi -> on iPad or Tablet
                    iVisibility1(
                      child: pageGridMisiPartaiPerindo(context, _scrollController),
                      visibility: (
                        MediaQuery.of(context).size.width <= dWidthMin_Mac160  ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac320 ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac480 ||
                        MediaQuery.of(context).size.width <= dWidthMin_Mac640 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac800 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac960 ||
                        //MediaQuery.of(context).size.width <= dWidthMin_Mac1120 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone5SE ||
                        MediaQuery.of(context).size.width <= dWidthMin_GoogleNexus5 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhoneX ||
                        MediaQuery.of(context).size.width <= dWidthMin_GooglePixel2 ||
                        MediaQuery.of(context).size.width <= dWidthMin_iPhone678Plus
                      ) ? "gone" : "visible",
                    ),

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
