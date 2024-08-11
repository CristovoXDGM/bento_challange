import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.287317620650954).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class CustomBottomNavBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();

    path_0.moveTo(0, size.height * 0.6367188);
    path_0.cubicTo(0, size.height * 0.8373516, size.width * 0.04673120, size.height,
        size.width * 0.1043771, size.height);
    path_0.lineTo(size.width * 0.8956229, size.height);
    path_0.cubicTo(size.width * 0.9532682, size.height, size.width,
        size.height * 0.8373516, size.width, size.height * 0.6367188);
    path_0.lineTo(size.width, size.height * 0.2734375);
    path_0.lineTo(size.width * 0.6015713, size.height * 0.2734375);
    path_0.quadraticBezierTo(size.width * 0.5538721, 0, size.width * 0.4971942, 0);
    path_0.quadraticBezierTo(
        size.width * 0.4405163, 0, size.width * 0.3916947, size.height * 0.2734375);
    path_0.lineTo(0, size.height * 0.2734375);
    path_0.lineTo(0, size.height * 0.6367188);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color.fromARGB(16, 183, 183, 183).withOpacity(1);

    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
