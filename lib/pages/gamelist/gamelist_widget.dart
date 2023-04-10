import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gamelist_model.dart';
export 'gamelist_model.dart';

class GamelistWidget extends StatefulWidget {
  const GamelistWidget({Key? key}) : super(key: key);

  @override
  _GamelistWidgetState createState() => _GamelistWidgetState();
}

class _GamelistWidgetState extends State<GamelistWidget>
    with TickerProviderStateMixin {
  late GamelistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 1.04,
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 1.04,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GamelistModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF14181B),
        body: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF14181B),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset(
                'assets/images/Background-Home_PG-Supergame.jpg',
              ).image,
            ),
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0x7F0F1113),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -0.8),
                          child: Image.asset(
                            'assets/images/Logo-Pageload_PG-Supergame.png',
                            width: 234.0,
                            height: 167.9,
                            fit: BoxFit.cover,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 1.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/71/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/caishen-wins_web_banner_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/89/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/lucky-neko_web_banner_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/87/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/treasure-of-aztec_web_banner_500_500_en.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/85/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from=');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/genie-3-wishes_web_banner_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/126/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/fortune-tiger_web-banner_500_500_en.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/107/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/legendary-monkey-king_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/1543462/index.html?l=th&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/fortune-rabbit_web-banner_en.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/1420892/index.html?l=th&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/rave-party-fever_web-banner_500_500_en.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/36/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/prosperity-lion_web_banner_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/120/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/the_queens_banquet_web_banner_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/123/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/rooster-rumble_web-banner_en.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/103/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/crypto-gold_web-banner_500_500_en.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/111/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from=');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/groundhog-harvest_web_banner_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/132/index.html?l=th&ot=ca7094186b309ee149c55c8822e7ecf2&btt=2&__refer=m.pg-redirect.net&or=static.pgsoft-games.com&from=');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/wild-coaster_500_500_en.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/asgardian-rising_web-banner_en.jpg',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/124/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from=https://22slot.com');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/battleground-royale_web_banner_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://m.pgsoft-games.com/113/index.html?ot=82b8b0f88e17ae53611e6dd7f167bc38&btt=2&__refer=m.pg-redirect.com&or=static.pgsoft-games.com&from=https://22slot.com');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/raiders-jane-crypt-of-fortune_500_500_en.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/legend-of-perseus_web-banner_500_500_en.jpg',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
