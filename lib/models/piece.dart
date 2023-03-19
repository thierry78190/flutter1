
class Piece {
  static const String pawn = 'pawn';
  static const String knight = 'knight';
  static const String bishop = 'bishop';
  static const String rook = 'rook';
  static const String queen = 'queen';
  static const String king = 'king';

  final int x;
  final int y;
  final String type;
  final PieceColor color;

  Piece({
    required this.x,
    required this.y,
    required this.type,
    required this.color,
  });

  bool isWhite() {
    return color == PieceColor.white;
  }

  bool isBlack() {
    return color == PieceColor.black;
  }

  bool isPawn() {
    return type == pawn;
  }

  bool isKnight() {
    return type == knight;
  }

  bool isBishop() {
    return type == bishop;
  }

  bool isRook() {
    return type == rook;
  }

  bool isQueen() {
    return type == queen;
  }

  bool isKing() {
    return type == king;
  }
  
  bool canMove(int dx, int dy) {
    // TODO: Implement movement rules for each piece type
    return true;
  }
  
  bool canCapture(int dx, int dy) {
    // TODO: Implement capture rules for each piece type
    return true;
  }
  
  bool canPromote() {
    return type == pawn && (y == 0 || y == 7);
  }
  
}

enum PieceType {
  pawn,
  knight,
  bishop,
  rook,
  queen,
  king, PAWN
}

enum PieceColor {
  white,
  black
}