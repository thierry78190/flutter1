import 'package:flutter/material.dart';
import 'package:test1/ui/piece_widget.dart';

import '../models/chessboard.dart';
import '../models/piece.dart';


class ChessBoardWidget extends StatelessWidget {
  //final double size;
  final ChessBoard board;

  const ChessBoardWidget({super.key, /*required this.size,*/ required this.board});

  @override
  Widget build(BuildContext context) {
    //final double squareSize = size / 8;

    return SizedBox(
      //width: size,
      //height: size,
      child: GridView.builder(
        //shrinkWrap : true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 64,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          final int x = index % 8;
          final int y = index ~/ 8;

          Color backgroundColor = (x + y) % 2 == 0 ? Colors.white : Colors.grey[700]!;

          //Piece? piece = board.getPieceAt(x, y);
          return Container(
            color: backgroundColor,
            child: const Text('a')
          );
        },
      ),
    );
  }
}
