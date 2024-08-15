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

  factory SessionData.fromJson(Map<String, dynamic> json) {
    return SessionData(
      speaker: SpeakerData.fromJson(json['speaker']),
      title: json['title'],
      description: json['description'],
      time: json['time'],
      isEnglish: json['isEnglish'],
    );
  }
}

class SpeakerData {
  final String name;
  final String bio;
  final String? imageUrl;

  const SpeakerData({
    required this.name,
    required this.bio,
    this.imageUrl,
  });

  factory SpeakerData.fromJson(Map<String, dynamic> json) {
    return SpeakerData(
      name: json['name'],
      bio: json['bio'],
      imageUrl: json['imageUrl'],
    );
  }
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
    title: 'Flutter FFI',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
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
      imageUrl: 'eric.webp'
    ),
    time: '14:00 ~ 14:40 (KST)',
    isEnglish: true,
  ),
  SessionData(
    title: '풍성한 디자인 요청사항에 대응하기',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(
      name: '박유진',
      bio: 'ABC Studio - Merchant',
      imageUrl: '박유진.webp'
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
    title: 'Flutter web을 활용하여 제품 개발 환경 개선하기',
    // description:
    //     '작년 사내 프로젝트로 WebRTC 기술을 이용한\n화상통화를 개발했던 경험을 회고하고,\nWebRTC 기술에 대한 개괄적인 설명과 함께\nflutter_webrtc 패키지를 활용한\n간단한 샘플 프로젝트를 소개한다.',
    speaker: SpeakerData(
      name: '김종식',
      bio: 'ABC Studio - Retail',
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
    title: 'Flutter Bloc을 제품 개발에 야무지게 적용하기',
    // description:
    //     '작년 사내 프로젝트로 WebRTC 기술을 이용한\n화상통화를 개발했던 경험을 회고하고,\nWebRTC 기술에 대한 개괄적인 설명과 함께\nflutter_webrtc 패키지를 활용한\n간단한 샘플 프로젝트를 소개한다.',
    speaker: SpeakerData(
      name: '최정연',
      bio: 'ABC Studio - Merchant',
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
    title: 'TBD',
    // description: 'Future<Flutter>를 준비하기 위한 여정과 행사에 대해 소개합니다.',
    speaker: SpeakerData(name: 'LG Electronics', bio: 'Korea Branch'),
    time: '19:15 ~ 19:55 (KST)',
  ),
];
