import 'package:flutter/material.dart';

class SlideTransitionPage extends StatelessWidget {
  final Widget child;
  final Animation<Offset> position;

  const SlideTransitionPage({
    Key? key,
    required this.child,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: position,
      child: child,
    );
  }
}
