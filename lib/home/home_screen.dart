import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_flutter_web_2024/home/background_effect.dart';
import 'package:future_flutter_web_2024/common/drawer_button.dart';
import 'package:future_flutter_web_2024/home/home_drawer.dart';
import 'package:future_flutter_web_2024/home/home_floating_action_button.dart';
import 'package:future_flutter_web_2024/style/color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: HomeFloatingActionButton(),
      body: Stack(
        children: [
          Positioned.fill(child: BackgroundEffect()),
          HomeContent(),
          Positioned(top: 20, left: 20, child: ScaffoldDrawerButton()),
        ],
      ),
      drawer: HomeDrawer(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final wideDevice = width > 820;

    final double logoSize = wideDevice ? 170 : 170 * (width / 820);
    final logoFontSize = wideDevice ? 55.45 : 55.45 * (width / 820);
    final locationFontSize = wideDevice ? 41.59 : 41.59 * (width / 820);
    final contentAlign =
        wideDevice ? const Alignment(-0.9, 0.5) : const Alignment(-0.9, 0);

    final logoTextStyle = GoogleFonts.montserrat(
      fontSize: logoFontSize,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      letterSpacing: 0.99,
      height: 1.2,
    );

    final locationTextStyle = TextStyle(
      fontFamily: 'SUIT',
      fontSize: locationFontSize,
      fontWeight: FontWeight.w300,
      color: gray.shade400,
      letterSpacing: 0.99,
      height: 1.2,
    );

    return Align(
      alignment: contentAlign,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('assets/svg/logo.svg', width: logoSize),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('2024', style: logoTextStyle),
                  Text('Future<Flutter>', style: logoTextStyle),
                ],
              )
            ],
          ),
          Text('Songdo Convensia, Incheon, Korea', style: locationTextStyle),
          Text('September 28, 2024', style: locationTextStyle),
        ],
      ),
    );
  }
}
