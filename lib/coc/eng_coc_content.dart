part of 'coc_screen.dart';

class EngCocContent extends StatelessWidget {
  const EngCocContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Title(text: 'Code of Conduct'),
          _Content(
            text:
            'As a developer-oriented community, the Future<Flutter> operating communities (Flutter Seoul, Flutter Incheon) prohibit comments about gender identity, sexual orientation, disability, appearance, ethnicity, nationality, race, age, politics, religion, etc. that may be offensive to others in order to ensure rights-free events.',
          ),
          _Content(
            text:
            'This Code of Conduct applies to all participants at Future<Flutter> events and violations may result in sanctions, including expulsion.',
          ),
          _Content(
            text:
            'Violations of the Code of Conduct may be publicized.',
          ),
          _SubTitle(text: '1. Be thoughtful.'),
          _Content(text: 'We\'re all part of the same community, so be a good person who is kind and welcoming to others.'),
          _Content(text: 'Be the kind of person others want to be around.'),
          _SubTitle(text: '2. Be respectful of each other.'),
          _Content(text: 'Lively debate is beneficial to a healthy developer ecosystem, but non-critical criticism is harmful to everyone. Try to agree to disagree, and work together to defuse conflict.'),
          _Content(text: 'Strive to understand each other.'),
          _SubTitle(text: '3. Be responsible for your words and actions.'),
          _Content(text: 'As members of a community, we are responsible for our words and actions.\nIf they cause problems, we need to make it right.'),
          _Content(text: 'In any case, if our words and actions offend others, we have a problem.'),
          _SubTitle(text: '4. Be an active participant.'),
          _Content(text: 'Active participation reduces distance and creates greater value.'),
          _Content(text: 'Be an active participant and work in harmony.'),
          _SubTitle(text: '5. Feel free to ask for help.'),
          _Content(text: 'If you find yourself in a difficult situation, be sure to ask for help.\nAnd if someone asks you to help them, don\'t hesitate to do so if it\'s legal and moral.'),
          SizedBox(height: 12),
          _Content(text: 'A healthy community requires that members adhere to the above Code of Conduct and that members who are cautioned comply with the Code of Conduct immediately.'),
          _Content(text: 'If you are sanctioned, you will not receive a refund of any fees you paid to participate in the event, and you may decline to participate in any future events related to the Community of Practice.'),
          _Content(text: 'All members are encouraged to report any behavior they see that makes them or others feel uncomfortable.'),
          _Content(text: 'They should find a moderator or send a message to future-flutter@googlegroup.com to let them know.'),
          _Content(text: 'The moderators will take immediate action when they become aware of it, notify the reporter of the outcome of their request in an appropriate manner.'),
          _Content(text: 'Moderators are expected to be responsive to participants and make efforts to keep participants safe, including protecting participants and contacting police/judicial authorities.'),
          _Title(text: 'Disclaimer'),
          _Content(text: 'Flutter Seoul / Flutter Incheon is an independent organization from Google and the Flutter team, and the activities and announcements made at Flutter Seoul / Flutter Incheon are not affiliated with Google.'),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
