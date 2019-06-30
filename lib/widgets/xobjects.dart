import 'package:flutter_web/material.dart';

Widget iCircle1(Color color, double height, double width)
{
  // photo background circle
  return Container(
    child: ClipRRect(
      child: Material(
        color: color,
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

    width: width,
    height: height,
  );
  // end of photo background circle
}

class iVisibility1 extends StatelessWidget
{
  final String visibility;
  final Widget child;
  final Widget removedChild;

  iVisibility1 ({
    @required this.child,
    @required this.visibility
  }) : this.removedChild = Container();

  @override
  Widget build(BuildContext context)
  {
    if (visibility == "visible")
    {
      return child;
    }
    else if (visibility == "invisible")
    {
      return new IgnorePointer(
        ignoring: true,
        child: new Opacity(
          opacity: 0.0,
          child: child,
        ),
      );
    }
    else if (visibility == "offscreen")
    {
      return new Offstage(
        offstage: true,
        child: child,
      );
    }
    else
    {
      // value is "gone"

      // If gone, we replace child with a custom widget (defaulting to a
      // [Container] with no defined size).
      return removedChild;
    }
  }
}