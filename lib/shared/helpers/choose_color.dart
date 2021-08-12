import 'dart:ui';

Color chooseColor(int id) {
  if (id % 3 == 0)
    return Color(0xFF79BBCA);
  else if (id % 2 == 0)
    return Color(0xFFEB9797);
  else
    return Color(0xFF90BB81);
}
