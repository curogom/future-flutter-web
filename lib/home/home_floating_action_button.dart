import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:future_flutter_web_2024/style/color.dart';

class HomeFloatingActionButton extends StatefulWidget {
  const HomeFloatingActionButton({super.key});

  @override
  State<HomeFloatingActionButton> createState() =>
      _HomeFloatingActionButtonState();
}

class _HomeFloatingActionButtonState extends State<HomeFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late Color startColor;
  late Color endColor;

  late ColorTween bgColorTween;

  late AnimationController bgColorController;
  late Animation<Color?> bgColor;

  @override
  void initState() {
    super.initState();

    startColor = primaryColor.shade600;
    endColor = primaryColor.shade900;
    bgColorTween = ColorTween(begin: startColor, end: endColor);
    bgColorController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    bgColor = bgColorTween.animate(bgColorController);
  }

  @override
  void dispose() {
    bgColorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bgColorController.repeat(reverse: true);

    return AnimatedBuilder(
      animation: bgColor,
      builder: (context, _) => FloatingActionButton.extended(
        onPressed: () => goTicketAlertPage(),
        hoverColor: primaryColor.shade600,
        backgroundColor: bgColor.value,
        elevation: 10,
        label: const Row(
          children: [
            Icon(Icons.airplane_ticket, color: Colors.white),
            SizedBox(width: 12),
            Text(
              '티켓 구매하러 가기',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  static const alertTicketUrl = 'https://festa.io/events/5704';

  void goTicketAlertPage() {
    html.window.open(alertTicketUrl, '_blank');
  }
}
