part of 'coc_screen.dart';

class KorCocContent extends StatelessWidget {
  const KorCocContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 12),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Title(text: '행동 강령'),
          _Content(
            text:
            'Future<Flutter> 운영 커뮤니티 (Flutter Seoul, Flutter Incheon)는 개발자 지향 커뮤니티로서\n권리 침해 없는 행사를 위하여 타인에게 불쾌감을 줄 수 있는 성 정체성, 성적 취향, 장애, 외모, 민족, 국적, 인종, 나이, 정치, 종교 등에 대한 발언은 금지합니다.',
          ),
          _Content(
            text:
            '이 행동 강령은 Future<Flutter> 행사에 참여하는 모든 참여자에게 해당하며 위반 시 퇴장 등의 제재를 받을 수 있습니다.',
          ),
          _Content(
            text:
            '행동 강령 위반 사례에 대한 내용은 공개될 수 있습니다.',
          ),
          _SubTitle(text: '1. 사려 깊게 행동해주세요.'),
          _Content(text: '우리는 모두 같은 공동체의 구성원입니다.\n그러므로 다른 사람들에게 친절하게 그리고 따듯하게 맞이하는 좋은 사람이 되어주세요.'),
          _Content(text: '다른 사람이 함께하고 싶어 하는 사람이 되어주세요.'),
          _SubTitle(text: '2. 서로를 존중해 주세요.'),
          _Content(text: '활발한 토론은 건강한 개발자 생태계에 도움이 되지만, 비판이 아닌 비난은 모든 사람들에게 해롭습니다.\n의견을 공감하려 노력하고, 갈등을 녹여가며 함께해주세요.'),
          _Content(text: '서로를 이해하기 위해 노력해주세요.'),
          _SubTitle(text: '3. 말과 행동에 책임감을 보여주세요.'),
          _Content(text: '우리는 공동체의 구성원으로서 하는 말과 행동에 대해 책임이 있습니다.\n그로 인해 문제가 발생한다면 바로잡아야 합니다.'),
          _SubTitle(text: '4. 적극적으로 참여해주세요.'),
          _Content(text: '적극적인 참여는 서로의 거리를 줄이며, 보다 큰 가치를 만들어 냅니다. '),
          _Content(text: '적극적으로 참여하며 조화롭게 어울려주세요.'),
          _SubTitle(text: '5. 자유롭게 도움을 구하세요.'),
          _Content(text: '곤란한 상황을 마주쳤다면 주위에 반드시 도움을 요청하세요.\n그리고 타인에게 도움을 요청 받았을 때, 합법적이고 도덕적인 일이라면 주저하지 말고 도와주세요.'),
          SizedBox(height: 12),
          _Content(text: '건강한 공동체를 위해 구성원들은 위 행동 강령을 준수하고,\n주의 받은 구성원은 즉시 행동 강령을 준수할 것을 요구합니다.'),
          _Content(text: '제재를 받은 경우 행사 참여를 위해 지불한 모든 비용을 돌려받을 수 없으며,\n운영 커뮤니티와 관련 된 이후 모든 이벤트에 참여를 거절 할 수 있습니다.'),
          _Content(text: '모든 구성원은 자신이나 다른 사람이 불편을 느끼게 하는 행동을 보았을 때 운영진을 찾거나\nfuture-flutter@googlegroup.com 로 보내서 알려야 합니다.'),
          _Content(text: '운영진은 이를 인지했을 때 즉시 행동을 취한 뒤,\n제보자에게 적절한 방법을 통해 요청 결과를 안내 합니다.'),
          _Content(text: '운영진은 참가자에게 흔쾌히 도움을 주어야 하며 참가자의 안전을 지키기 위한 노력을 해야 합니다.\n그 노력에는 참가자 보호, 경찰/사법기관으로의 연락을 포함합니다.'),
          _Title(text: '권리 포기서'),
          _Content(text: 'Flutter Seoul / Flutter Incheon은 Google, Flutter팀과 독립적인 단체로,\nFlutter Seoul / Flutter Incheon에서 진행하는 활동과 발표되는 내용들은 Google과 관련이 없습니다.'),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
