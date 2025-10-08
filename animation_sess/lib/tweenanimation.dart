import 'package:flutter/material.dart';

class Tweenanimation extends StatefulWidget {
  const Tweenanimation({super.key});

  @override
  State<Tweenanimation> createState() => _TweenanimationState();
}

class _TweenanimationState extends State<Tweenanimation> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isBig = !_isBig;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(
            // Use _isBig to determine the target end value
            end: _isBig ? 1.0 : 0.0,
          ),
          duration: const Duration(seconds: 1), // A shorter duration is often better
          curve: Curves.easeInOut, // Use a smoother curve
          builder: (context, size, child) {
            // The value of 'size' animates from begin to end
            // We multiply it by a constant to get a visible icon size
            return Icon(Icons.favorite, size: size * 200, color: Colors.red);
          },
        ),
      ),
    );
  }
}