import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/style/color.dart';

class BackgroundEffect extends StatefulWidget {
  const BackgroundEffect({super.key});

  @override
  State<BackgroundEffect> createState() => _BackgroundEffectState();
}

class _BackgroundEffectState extends State<BackgroundEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController bgController;
  late ColorTween topColorTween;
  late Animation<Color?> topColor;

  final beginColor = primaryColor.shade600;
  final endColor = primaryColor.shade900;

  @override
  void initState() {
    super.initState();

    bgController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );

    topColorTween = ColorTween(begin: beginColor, end: endColor);
    topColor = topColorTween.animate(bgController);
  }

  @override
  void dispose() {
    bgController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bgController.repeat(reverse: true);
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return AnimatedBuilder(
      animation: bgController,
      builder: (context, child) {
        List<Color> colors = width > height
            ? [
                topColor.value ?? Colors.black,
                endColor,
              ]
            : [
                endColor,
                topColor.value ?? Colors.black,
                endColor,
              ];

        List<double> stops = width > height ? [0.0, 0.8] : [0.35, 0.45, 0.6];

        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              stops: stops,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        );
      },
    );
  }
}
