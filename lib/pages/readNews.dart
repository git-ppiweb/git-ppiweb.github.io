import 'package:flutter_web/material.dart';

import 'package:partaiperindo_webdev1/sources/doubles.dart';

import 'package:partaiperindo_webdev1/widgets/xcards.dart';
//import 'package:partaiperindo_webdev1/widgets/xgrids.dart';
import 'package:partaiperindo_webdev1/widgets/xheaders.dart';

class ReadNews extends StatefulWidget
{
  String id, judulBerita, isiBerita, urlPhoto, tglPosting;
  String authorNamaLengkap, authorUrlPhoto;

  ReadNews({
    @required this.id,
    @required this.judulBerita,
    @required this.isiBerita,
    @required this.urlPhoto,
    @required this.tglPosting,
    @required this.authorNamaLengkap,
    @required this.authorUrlPhoto
  });

  @override
  _ReadNewsState createState() => _ReadNewsState(
    id: this.id,
    judulBerita: this.judulBerita,
    isiBerita: this.isiBerita,
    urlPhoto: this.urlPhoto,
    tglPosting: this.tglPosting,
    authorNamaLengkap: this.authorNamaLengkap,
    authorUrlPhoto: this.authorUrlPhoto
  );
}

class _ReadNewsState extends State<ReadNews>
{
  String id, judulBerita, isiBerita, urlPhoto, tglPosting;
  String authorNamaLengkap, authorUrlPhoto;

  ScrollController _scrollController;

  static const routeName = '/readnews';

  _ReadNewsState({
    @required this.id,
    @required this.judulBerita,
    @required this.isiBerita,
    @required this.urlPhoto,
    @required this.tglPosting,
    @required this.authorNamaLengkap,
    @required this.authorUrlPhoto
  });

  @override
  void initState()
  {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    //final ScreenArguments args = ModalRoute.of(context).settings.arguments;

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

                    // Read News
                    pageCardReadNews(context, _scrollController),

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