import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/background_effect.dart';
import 'package:future_flutter_web_2024/common/ff_app_bar.dart';
import 'package:future_flutter_web_2024/home/home_drawer.dart';

part 'kor_coc_content.dart';

part 'eng_coc_content.dart';

late double width;

class CocScreen extends StatefulWidget {
  const CocScreen({super.key});

  @override
  State<CocScreen> createState() => _CocScreenState();
}

enum Language { kor, eng }

class _CocScreenState extends State<CocScreen> {
  late Widget contents;
  late Language lang;

  void changeLang({required Language lang}) {
    setState(() {
      this.lang = lang;
      if (lang == Language.kor) {
        contents = const KorCocContent();
      } else {
        contents = const EngCocContent();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    contents = const KorCocContent();
    lang = Language.kor;
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    if (width > 820) {
      width = 820;
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ffAppBar(title: 'Code of Conduct'),
      body: Stack(
        children: [
          const BackgroundEffect(),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  _languageSelector(),
                  contents,
                ],
              ),
            ),
          )
        ],
      ),
      drawer: const HomeDrawer(),
    );
  }

  Widget _languageSelector() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => changeLang(lang: Language.kor),
            child: SizedBox(
              width: 45,
              height: 30,
              child: Image.asset(
                'assets/images/kr.webp',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 12),
          InkWell(
            onTap: () => changeLang(lang: Language.eng),
            child: SizedBox(
              width: 45,
              height: 30,
              child: Image.asset(
                'assets/images/us.webp',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String text;

  const _Title({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 16, 16),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String text;

  const _SubTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 10, 10),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final String text;

  const _Content({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
