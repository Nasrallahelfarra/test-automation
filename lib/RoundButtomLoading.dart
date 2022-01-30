
import 'package:flutter/material.dart';

class RoundButtomLoading extends StatelessWidget {
   const RoundButtomLoading(
      {Key? key, this.title, this.colore=Colors.white, this.press, this.state,this.fontSize=14})
      : super(key: key);
  final String? title;
  final Color? colore;
  final GestureTapCallback? press;
   final int? state;
   final double? fontSize;
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ElevatedButton(
          key:ValueKey('$title'),
          //   padding: EdgeInsets.symmetric(vertical: 18,horizontal: 10),
          onPressed: press,
          style: ElevatedButton.styleFrom(
              primary: colore,//change background color of button
              onPrimary: Colors.yellow,////change text color of button
              onSurface: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
              textStyle:
                  TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold,color: Colors.blue)),
          child: setUpButtonChild(),
        ),
      ),
    );
  }

  Widget setUpButtonChild() {
    if (state == 1) {
      return Text(
        title!,
        style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
            ),
      );
    } else if (state == 2) {
      return SizedBox(
        width:20,
        height:20,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return Icon(Icons.check, color: Colors.white);
    }
  }
}
