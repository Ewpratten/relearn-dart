import 'dart:math';

class Bicycle {
  int candence;
  int _speed = 0;
  int gear;

  Bicycle(this.candence, this.gear);

  @override
  String toString() => 'Bicycle: ${_speed}km/h';
  int get speed => _speed;

  void applyBrake(double percent) {
    _speed -= _speed * max(min(percent, 1), -1);
  }

  void setSpeed(int speed) {
    _speed = speed;
  }
}
