import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/gamelist/gamelist_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 900.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 1000.ms,
          hz: 3,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 3000.ms,
          duration: 1000.ms,
          hz: 3,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 900.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 900.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 900.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation5': AnimationInfo(
      loop: true,
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
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Play Sound
      _model.soundPlayer ??= AudioPlayer();
      if (_model.soundPlayer!.playing) {
        await _model.soundPlayer!.stop();
      }
      _model.soundPlayer!.setVolume(0.4);
      await _model.soundPlayer!
          .setAsset('assets/audios/0321.MP3')
          .then((_) => _model.soundPlayer!.play());
    });
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Image.asset(
                  'assets/images/Background-Home_PG-Supergame.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.3),
                child: InkWell(
                  onTap: () async {
                    await launchURL('http://bit.ly/40TeFAn');
                  },
                  child: Image.asset(
                    'assets/images/Button-1-Home_PG-Supergame.png',
                    width: 283.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation1']!),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.03),
                child: InkWell(
                  onTap: () async {
                    await launchURL('https://member.superslot888.one/login');
                  },
                  child: Image.asset(
                    'assets/images/Button-2-Home_PG-Supergame.png',
                    width: 283.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation2']!),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.24),
                child: InkWell(
                  onTap: () async {
                    await launchURL('http://bit.ly/40TeFAn');
                  },
                  child: Image.asset(
                    'assets/images/Button-3-Home_PG-Supergame.png',
                    width: 283.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation3']!),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.51),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GamelistWidget(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Button-4-Home_PG-Supergame.png',
                    width: 282.5,
                    height: 89.5,
                    fit: BoxFit.cover,
                  ),
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation4']!),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.82),
                child: Image.asset(
                  'assets/images/Logo-Pageload_PG-Supergame.png',
                  width: 234.0,
                  height: 167.9,
                  fit: BoxFit.cover,
                ).animateOnPageLoad(
                    animationsMap['imageOnPageLoadAnimation5']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
