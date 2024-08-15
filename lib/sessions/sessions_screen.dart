import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/background_effect.dart';
import 'package:future_flutter_web_2024/common/ff_app_bar.dart';
import 'package:future_flutter_web_2024/home/home_drawer.dart';
import 'package:future_flutter_web_2024/sessions/session_card.dart';
import 'package:future_flutter_web_2024/sessions/session_data_model.dart';
import 'package:future_flutter_web_2024/style/color.dart';

List<String> startTime = [
  '12:30',
  '12:40',
  '13:25',
  '14:00',
  '14:45',
  '15:35',
  '16:10',
  '16:55',
  '17:45',
  '18:30',
  '19:15',
];

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 820;

    return Scaffold(
      appBar: ffAppBar(title: 'Sessions'),
      body: Stack(
        children: [
          const BackgroundEffect(),
          isDesktop ? const SessionsDesktopCarousel() : const SessionsList(),
          const NoticeText(),
        ],
      ),
      drawer: const HomeDrawer(),
    );
  }
}

class SessionsDesktopCarousel extends StatefulWidget {
  const SessionsDesktopCarousel({super.key});

  @override
  State<SessionsDesktopCarousel> createState() =>
      _SessionsDesktopCarouselState();
}

class _SessionsDesktopCarouselState extends State<SessionsDesktopCarousel> {
  late final CarouselSliderController _controller;
  late List<Widget> sessions;
  late int _current;

  @override
  void initState() {
    super.initState();
    _controller = CarouselSliderController();
    sessions = sessionsData.map((data) => SessionCard(data: data)).toList();
    _current = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: CarouselSlider(
            items: sessions,
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              animateToClosest: false,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              autoPlayInterval: const Duration(seconds: 10),
              enlargeCenterPage: true,
              aspectRatio: 26 / 9,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) =>
                  setState(() => _current = index),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sessions.asMap().entries.map((entry) {
                final index = entry.key;
                return GestureDetector(
                  onTap: () => _controller.animateToPage(index),
                  child: Container(
                    width: 120.0,
                    height: 80.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? primaryColor.shade100
                          : primaryColor.shade100.withOpacity(0.4),
                    ),
                    child: Center(
                        child: Text(
                      startTime[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class SessionsList extends StatelessWidget {
  const SessionsList({super.key});

  @override
  Widget build(BuildContext context) {
    final sessions =
        sessionsData.map((data) => SessionCard(data: data)).toList();

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView(children: sessions),
    );
  }
}

class NoticeText extends StatelessWidget {
  const NoticeText({super.key});

  @override
  Widget build(BuildContext context) {
    const text = '각 세션별 시간과 순서는 행사 당일 변경될 수 있습니다.';

    final size = MediaQuery.of(context).size;
    final width = size.width;
    final isDesktop = width > 820;

    return Align(
      alignment: isDesktop ? Alignment.topRight : Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.all(isDesktop ? 8.0 : 0),
        child: const Text(
          text,
          style: TextStyle(fontFamily: 'Montserrat', color: Colors.white),
        ),
      ),
    );
  }
}
