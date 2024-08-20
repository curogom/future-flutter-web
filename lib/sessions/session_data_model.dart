class SessionData {
  final SpeakerData speaker;
  final String title;
  final String? description;
  final String time;
  final bool isEnglish;

  const SessionData({
    required this.speaker,
    required this.title,
    this.description,
    required this.time,
    this.isEnglish = false,
  });
}

class SpeakerData {
  final String name;
  final String bio;
  final String? imageUrl;
  final String? speakerDescription;

  const SpeakerData({
    required this.name,
    required this.bio,
    this.imageUrl,
    this.speakerDescription,
  });
}

const hostBucket = "https://pub-659f1f476c7d444589f1c78e727c7a60.r2.dev/";

const List<SessionData> sessionsData = [
  SessionData(
    title: 'KeyNote',
    description: 'Future<Flutter>를 준비하기 위한\n여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: 'Future<Flutter> 2024 Team',
      bio: 'Flutter Seoul / Flutter Incheon Organizer',
    ),
    time: '12:30 ~ 12:40 (KST)',
  ),
  SessionData(
    title: 'FFI로 연결하는 고(Go)와 플러터',
    description: 'Flutter 프로젝트에서\nGo로 작성된 다양한 라이브러리를\nFFI를 통해 연동하는 실제적인 방법을 소개합니다.\n\n머신러닝, 이미지 처리 등 다양한 분야의\nGo 라이브러리를 활용하여\nFlutter 앱의 기능을 확장할 수 있습니다.',
    speaker: SpeakerData(
      name: '이진석 (Jhin Lee)',
      bio:
          'GDE Flutter / Dart\nGDG & Flutter Montreal Organizer\nFull-Stack Developer @Unity',
      imageUrl: '이진석.webp',
    ),
    time: '12:40 ~ 13:20 (KST)',
  ),
  SessionData(
    title: 'Flutter WebRTC',
    description:
    '작년 사내 프로젝트로 WebRTC 기술을 이용한\n화상통화를 개발했던 경험을 회고하고,\nWebRTC 기술에 대한 개괄적인 설명과 함께\nflutter_webrtc 패키지를 활용한\n간단한 샘플 프로젝트를 소개한다.',
    speaker: SpeakerData(
      name: '이정주',
      bio: '(주) 펴나니\nGDG & Flutter Incheon Organizer',
      imageUrl: '이정주.webp',
    ),
    time: '13:25 ~ 13:55 (KST)',
  ),
  SessionData(
    title: 'ShoreBird 작동 방식',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: 'Eric Seidel',
      bio: 'ShoreBird Founder\nFlutter Co-Founder',
      imageUrl: 'eric2.webp'
    ),
    time: '14:00 ~ 14:40 (KST)',
    isEnglish: true,
  ),
  SessionData(
    title: '풍성한 디자인 요청사항에 대응하기',
    description: '다양한 디자인 요청사항을\n효과적으로 처리하는 방법과\n이를 구현하는 과정을 공유합니다.\n여러 사례를 통해 실제 프로젝트에서의\n도전과 해결책을 소개합니다.',
    speaker: SpeakerData(
      name: '박유진',
      bio: 'LINE / ABC Studio',
      imageUrl: '박유진.webp',
    ),
    time: '14:45 ~ 15:25 (KST)',
  ),
  SessionData(
    title: '애니메이션, 페인트, 쉐이더로 알아보는\n플러터 렌더링의 모든 것',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: 'Aiden',
      bio: 'Flutter Seoul Organizer',
      imageUrl: 'aiden.webp',
    ),
    time: '15:35 ~ 16:05 (KST)',
  ),
  SessionData(
    title: 'Flutter web을 활용하여 제품 개발 환경\n개선하기',
    description: '일본에서 운영중인 배달 서비스\n‘데마에칸(Demaecan, 出前館)’은\nFlutter 로 개발하고 있습니다.\n현재 데마에칸에서 Flutter web 활용 사례와\n이를 위한 세 번의 과정을 소개드립니다.',
    speaker: SpeakerData(
      name: '김종식',
      bio: 'LINE / ABC Studio',
      imageUrl: '김종식.webp',
    ),
    time: '16:10 ~ 16:50 (KST)',
  ),
  SessionData(
      title: '어느날 갑자기 앱이 터졌을 때',
      // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
      speaker: SpeakerData(
        name: '신원규',
        bio: '설로인(주)\nFlutter Seoul Organizer',
        imageUrl: '신원규.webp',
      ),
      time: '16:55 ~ 17:35 (KST)',
  ),
  SessionData(
    title: 'Flutter Bloc을 제품 개발에\n야무지게 적용하기',
    description: 'Flutter bloc을 사용한 경험을 공유합니다.\nBloc vs Cubit, state class 설계,\n일회성 동작 처리 등을 다루며,\n실제 개발 사례와 팁을 소개합니다.',
    speaker: SpeakerData(
      name: '최정연',
      bio: 'LINE / ABC Studio',
      imageUrl: '최정연.webp',
    ),
    time: '17:45 ~ 18:25 (KST)',
  ),
  SessionData(
    title: 'TBD',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: 'Craig Labenz & 이자영',
      bio: 'Flutter @Google',
      imageUrl:'google.webp',
    ),
    time: '18:30 ~ 19:10 (KST)',
    isEnglish: true,
  ),
  SessionData(
    title: 'WebOS 소개 및 Flutter 적용 계획',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(name: '이동영', bio: 'TV System App Team @LG전자'),
    time: '19:15 ~ 19:55 (KST)',
  ),
];
