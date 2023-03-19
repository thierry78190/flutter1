import 'package:flutter/material.dart';
import '../models/piece.dart';

class PieceWidget extends StatelessWidget {
  final Piece piece;
  final double size;

  const PieceWidget(this.piece, {super.key, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: piece.color == PieceColor.white ? Colors.white : Colors.black,
        ),
        child: piece.type == PieceType.pawn
            ? CustomPaint(
                painter: PawnPainter(
                  color: piece.color == PieceColor.white ? Colors.black : Colors.white,
                  iconSize: size,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}

class PawnPainter extends CustomPainter {
  final double iconSize;
  final Color color;

  PawnPainter({required this.color, this.iconSize = 50});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, iconSize * 0.25);
    path.quadraticBezierTo(iconSize * 0.5, 0, iconSize, iconSize * 0.25);
    path.lineTo(iconSize, iconSize * 0.75);
    path.quadraticBezierTo(iconSize * 0.5, iconSize, 0, iconSize * 0.75);
    path.close();

    canvas.drawPath(path, paint);

    paint.color = color;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = iconSize / 10;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
