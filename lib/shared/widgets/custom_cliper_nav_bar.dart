import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.287317620650954).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class CustomBottomNavigationBarPainter extends CustomPainter {
  final Color backgroundColor;

  CustomBottomNavigationBarPainter({super.repaint, required this.backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.6367188);
    path_0.cubicTo(0, size.height * 0.8373516, size.width * 0.04673120, size.height,
        size.width * 0.1043771, size.height);
    path_0.lineTo(size.width * 0.8956229, size.height);
    path_0.cubicTo(
      size.width,
      size.height,
      size.width,
      size.height,
      size.width,
      size.height,
    );
    path_0.lineTo(size.width, size.height * 0.2734375);
    path_0.lineTo(size.width * 0.6015713, size.height * 0.2734375);
    path_0.quadraticBezierTo(size.width * 0.56, 0, size.width * 0.4971942, 0);
    path_0.quadraticBezierTo(size.width * 0.43, 0, size.width * 0.39, size.height * 0.27);
    path_0.lineTo(0, size.height * 0.2734375);
    path_0.lineTo(0, size.height * 0.6367188);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = backgroundColor;

    canvas.drawPath(path_0, paint0Fill);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomBoxShadowNAvBar extends CustomPainter {
  CustomBoxShadowNAvBar({
    super.repaint,
  });

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.6367188);
    path_0.cubicTo(0, size.height * 0.8373516, size.width * 0.04673120, size.height,
        size.width * 0.1043771, size.height);
    path_0.lineTo(size.width * 0.8956229, size.height);
    path_0.cubicTo(
      size.width,
      size.height,
      size.width,
      size.height,
      size.width,
      size.height,
    );
    path_0.lineTo(size.width, size.height * 0.2734375);
    path_0.lineTo(size.width * 0.6015713, size.height * 0.2734375);
    path_0.quadraticBezierTo(size.width * 0.56, 0, size.width * 0.4971942, 0);
    path_0.quadraticBezierTo(size.width * 0.43, 0, size.width * 0.39, size.height * 0.27);
    path_0.lineTo(0, size.height * 0.2734375);
    path_0.lineTo(0, size.height * 0.6367188);
    path_0.close();

    // Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    // paint0Fill.color = Colors.black;
    canvas.translate(0, -5);
    canvas.drawShadow(path_0, Colors.black87, 4, false);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
