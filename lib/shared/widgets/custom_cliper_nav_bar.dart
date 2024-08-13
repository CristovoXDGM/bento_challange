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
    path_0.moveTo(size.width, size.height * 0.9511531);
    path_0.lineTo(size.width, size.height * 0.9511531);
    path_0.lineTo(size.width, size.height * 0.3228401);
    path_0.lineTo(size.width * 0.5993801, size.height * 0.3228401);
    path_0.quadraticBezierTo(size.width * 0.5877495, size.height * 0.3005446,
        size.width * 0.5796745, size.height * 0.2594954);
    path_0.cubicTo(
        size.width * 0.5715996,
        size.height * 0.2184463,
        size.width * 0.5565257,
        size.height * 0.1600537,
        size.width * 0.5489893,
        size.height * 0.1396541);
    path_0.cubicTo(
        size.width * 0.5414529,
        size.height * 0.1192544,
        size.width * 0.5214111,
        size.height * 0.08144514,
        size.width * 0.4938051,
        size.height * 0.08144514);
    path_0.cubicTo(
        size.width * 0.4662002,
        size.height * 0.08144514,
        size.width * 0.4617152,
        size.height * 0.09249391,
        size.width * 0.4442505,
        size.height * 0.1396537);
    path_0.cubicTo(
        size.width * 0.4267859,
        size.height * 0.1868137,
        size.width * 0.4284004,
        size.height * 0.2035391,
        size.width * 0.4162409,
        size.height * 0.2594954);
    path_0.cubicTo(
        size.width * 0.4040803,
        size.height * 0.3154518,
        size.width * 0.3998683,
        size.height * 0.3228404,
        size.width * 0.3963105,
        size.height * 0.3228401);
    path_0.lineTo(size.width * 0.02141328, size.height * 0.3228401);
    path_0.lineTo(size.width * -2, size.height * 2);
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
    path_0.moveTo(size.width, size.height * 0.9511531);
    path_0.lineTo(size.width, size.height * 0.9511531);
    path_0.lineTo(size.width, size.height * 0.3228401);
    path_0.lineTo(size.width * 0.5993801, size.height * 0.3228401);
    path_0.quadraticBezierTo(size.width * 0.5877495, size.height * 0.3005446,
        size.width * 0.5796745, size.height * 0.2594954);
    path_0.cubicTo(
        size.width * 0.5715996,
        size.height * 0.2184463,
        size.width * 0.5565257,
        size.height * 0.1600537,
        size.width * 0.5489893,
        size.height * 0.1396541);
    path_0.cubicTo(
        size.width * 0.5414529,
        size.height * 0.1192544,
        size.width * 0.5214111,
        size.height * 0.08144514,
        size.width * 0.4938051,
        size.height * 0.08144514);
    path_0.cubicTo(
        size.width * 0.4662002,
        size.height * 0.08144514,
        size.width * 0.4617152,
        size.height * 0.09249391,
        size.width * 0.4442505,
        size.height * 0.1396537);
    path_0.cubicTo(
        size.width * 0.4267859,
        size.height * 0.1868137,
        size.width * 0.4284004,
        size.height * 0.2035391,
        size.width * 0.4162409,
        size.height * 0.2594954);
    path_0.cubicTo(
        size.width * 0.4040803,
        size.height * 0.3154518,
        size.width * 0.3998683,
        size.height * 0.3228404,
        size.width * 0.3963105,
        size.height * 0.3228401);
    path_0.lineTo(size.width * 0.02141328, size.height * 0.3228401);
    path_0.lineTo(size.width * -2, size.height * 2);
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
