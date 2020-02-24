import 'dart:math';

abstract class Rectangle {
  Point get origin;
  Point get end;
}

class AABB extends Rectangle {
  Point aa;
  Point bb;

  AABB({this.aa = const Point(0, 0), this.bb});

  @override
  Point<num> get end => bb;

  @override
  Point<num> get origin => aa;
}
