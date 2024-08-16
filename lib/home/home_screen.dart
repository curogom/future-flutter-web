import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_flutter_web_2024/common/background_effect.dart';
import 'package:future_flutter_web_2024/common/drawer_button.dart';
import 'package:future_flutter_web_2024/home/home_drawer.dart';
import 'package:future_flutter_web_2024/sessions/session_data_model.dart';
import 'package:future_flutter_web_2024/style/color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // floatingActionButton: const HomeFloatingActionButton(),
      body: Stack(
        children: [
          const Positioned.fill(child: BackgroundEffect()),
          const HomeContent(),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: primaryColor.shade100,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.shade500,
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: const ScaffoldDrawerButton(),
            ),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
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
    final double logoTextSize = wideDevice ? 545 : 545 * (width / 820);
    final double logoFontSize = wideDevice ? 55.45 : 55.45 * (width / 820);
    final double locationFontSize = wideDevice ? 41.59 : 41.59 * (width / 820);
    const contentAlign = Alignment(-0.9, 0.5);

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
      child: Padding(
        padding: wideDevice ? EdgeInsets.zero : const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset('assets/svg/logo.svg', width: logoSize),
                const SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2024', style: logoTextStyle),
                    SvgPicture.asset(
                      'assets/svg/ff_text_logo.svg',
                      width: logoTextSize,
                    ),
                  ],
                ),
              ],
            ),
            Text('Songdo Convensia, Incheon, Korea', style: locationTextStyle),
            Text('September 28, 2024', style: locationTextStyle),
            const SizedBox(height: 20),
            const SponsorWidget(),
          ],
        ),
      ),
    );
  }
}

class SponsorWidget extends StatelessWidget {
  const SponsorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    final wideDevice = width > 820;

    final double sponsorFontSize = wideDevice ? 32 : 32 * (width / 820);

    final sponsorTextStyle = GoogleFonts.montserrat(
      fontSize: sponsorFontSize,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: 0.99,
      height: 1.2,
    );

    List<Widget> getSponsors() {
      Widget displaySponsor;
      double? height;

      if (wideDevice) {
        height = 60;
      } else {
        height = 20;
      }

      Widget spacer =
          wideDevice ? const SizedBox(width: 20) : const SizedBox(height: 4);

      List<Widget> sponsorList = [
        Image.network(
          '${hostBucket}google_dev.webp',
          height: height,
        ),
        spacer,
        Image.network(
          '${hostBucket}line.webp',
          height: height,
        )
      ];

      if (wideDevice) {
        displaySponsor = Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: sponsorList,
        );
      } else {
        displaySponsor = Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sponsorList,
        );
      }

      return [
        Text(
          'Sponsored by',
          style: sponsorTextStyle,
        ),
        displaySponsor,
      ];
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: getSponsors(),
    );
  }
}
