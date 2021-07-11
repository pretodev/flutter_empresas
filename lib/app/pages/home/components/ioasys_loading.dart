import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IoasysLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          IoasysLoadingElipse(size: 48.0),
          IoasysLoadingElipse(size: 72.0, reverse: true),
        ],
      ),
    );
  }
}

class IoasysLoadingElipse extends StatefulWidget {
  const IoasysLoadingElipse({
    Key? key,
    required this.size,
    this.reverse = false,
  }) : super(key: key);

  final double size;
  final bool reverse;

  @override
  State<StatefulWidget> createState() => _IoasysLoadingElipseState();
}

class _IoasysLoadingElipseState extends State<IoasysLoadingElipse>
    with SingleTickerProviderStateMixin {
  late AnimationController elipse1;
  late Tween<double> tween;

  @override
  void initState() {
    super.initState();
    elipse1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2000))
          ..repeat();
    tween = widget.reverse
        ? Tween(begin: 1.0, end: 0.0)
        : Tween(begin: 0.0, end: 1.0);
  }

  @override
  void dispose() {
    elipse1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: tween.animate(elipse1),
      child: Container(
        height: widget.size,
        width: widget.size,
        child: SvgPicture.asset('assets/images/ellipse.svg'),
      ),
    );
  }
}
