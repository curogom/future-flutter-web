import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_flutter_web_2024/sessions/session_data_model.dart';
import 'package:future_flutter_web_2024/style/color.dart';

class SessionCard extends StatelessWidget {
  final SessionData data;

  const SessionCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final isDesktop = width > 820;
    final double horizontalMargin = isDesktop ? width * 0.1 : 16;
    final double verticalMargin = 40 * (width / 1920);

    final double subTitleFontSize = isDesktop ? 16 : 14 * (width / 820);
    final double titleFontSize = isDesktop ? 28 : 24 * (width / 820);
    final double descriptionFontSize = isDesktop ? 20 : 18 * (width / 820);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            primaryColor.shade100,
            primaryColor.shade500,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          if (data.isEnglish)
            Positioned(
              top: 0,
              right: 0,
              child: Text(
                '해당 세션은 영어로 진행 됩니다.',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: subTitleFontSize,
                  color: primaryColor.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          Row(
            children: [
              Expanded(
                flex: isDesktop ? 2 : 1,
                child: SpeakerInfo(data: data.speaker),
              ),
              Expanded(
                flex: isDesktop ? 3 : 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.time,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: descriptionFontSize,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      data.title,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: isDesktop ? 16 : 8),
                    if (data.description != null)
                      Text(
                        data.description!,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: descriptionFontSize,
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SpeakerInfo extends StatelessWidget {
  final SpeakerData data;

  const SpeakerInfo({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final isDesktop = width > 820;
    final double imageSize = isDesktop ? 160 : 160 * (width / 820);
    final double nameFontSize = isDesktop ? 24 : 18 * (width / 820);
    final double bioFontSize = isDesktop ? 16 : 14 * (width / 820);
    final double speakerDescFontSize = isDesktop ? 14 : 12 * (width / 820);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: imageSize,
            height: imageSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: primaryColor.shade600),
              color: primaryColor.shade900,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(38),
              child: data.imageUrl == null
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset('assets/svg/logo.svg'),
                    )
                  : CachedNetworkImage(
                      imageUrl: hostBucket + data.imageUrl!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Center(
                        child: CircularProgressIndicator(
                          color: primaryColor.shade900,
                        ),
                      ),
                    ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: nameFontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  data.bio,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: bioFontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (data.speakerDescription != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      data.speakerDescription!,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: speakerDescFontSize,
                      ),
                    ),
                  )

              ],
            ),
          ),
        ),
      ],
    );
  }
}
