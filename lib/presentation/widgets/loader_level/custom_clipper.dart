import 'package:flutter/material.dart';
import 'package:test_app/presentation/design/colors.dart';

class CustomClipperLoader extends StatefulWidget {
  final int percent;
  const CustomClipperLoader({required this.percent, super.key});

  @override
  State<CustomClipperLoader> createState() => _CustomClipperLoaderState();
}

class _CustomClipperLoaderState extends State<CustomClipperLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..forward();
    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset(0, 1 - widget.percent / 100),
    ).animate(_animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 180 * (1 - _animation.value.dy),
            width: double.infinity,
            color: DesignColors.primaryBlue.withOpacity(0.48),
          ),
        );
      },
    );
  }
}
