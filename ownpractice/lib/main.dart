import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ownpractice/pages/ExtractTextFromImage.dart';
import 'package:ownpractice/pages/ImageFromGallery/DetectFromGallery.dart';
import 'package:ownpractice/pages/RealTime/objectdetection.dart';
//import 'package:ownpractice/pages/RealTimeObjectDetection/main_realtime.dart';
import 'package:ownpractice/pages/TextToSpeech.dart';
import 'package:ownpractice/pages/homepage.dart';
import 'package:ownpractice/pages/youtube_api1.dart';
import 'package:ownpractice/pages/youtube_api2.dart';
import 'package:ownpractice/pages/youtube_api3.dart';
import 'package:ownpractice/pages/youtube_api4.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:cube_transition/cube_transition.dart';
import 'package:avatar_glow/avatar_glow.dart';

//List<CameraDescription> cameras =0 as List<CameraDescription>;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //cameras = await availableCameras();
  runApp(MaterialApp(
    home: FirstScreen(),
    routes: {
      '/HomeScreen': (context) => HomeScreen(),
      '/RealTime' : (context) => ObjectDetectInRealTime(),
      '/FromGallery' : (context) => Gallery(),
      '/TextToSpeech' : (context) => TxtToSpeech(),
      '/ExtractTextFromImage' : (context) => ExtractTextFromImage(),
      '/YoutubeApi' : (context) => YoutubeApiApp(),
      '/YoutubeApi2' : (context) => YoutubeApiApp_two(),
      '/YoutubeApi3' : (context) => YoutubeApiAppThree(),
      '/YoutubeApi4': (context) => YoutubeApiAppFour(),
    },
  ));
}


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover
              ),
            ),

            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 220.0,
                  top: 50.0,
                  right: null,
                  bottom: null,
                  width: 165.0,
                  height: 173.0,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        'Lets learn with flutter',
                        textStyle: TextStyle(
                          fontSize: 38,
                          fontFamily: 'WorkSans',
                        ),
                      ),
                    ],
                    repeatForever: true,
                    isRepeatingAnimation: true,
                  ),
                ),
                Positioned(
                  left: 95.0,
                  top: 573.0,
                  right: null,
                  bottom: null,
                  width: 210.0,
                  height: 46.0,
                  child: GestureDetector(
                    //onTap: () => Navigator.pushNamed(context, '/HomeScreen'),
                    onTap: (){Navigator.of(context).push(CubePageRoute(
                      enterPage: HomeScreen(),
                      //exitPage: this,
                      duration: const Duration(milliseconds: 900),
                    )
                    );},
                    child: Container(
                      width: 210.0,
                      height: 46.0,
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            right: null,
                            bottom: null,
                            width: 210.0,
                            height: 46.0,
                            child: Container(
                              width: 210.0,
                              height: 46.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(45.0),
                                child: Container(
                                  color: Color.fromARGB(173, 67, 28, 149),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 73.0,
                            top: 12.0,
                            right: null,
                            bottom: null,
                            width: 89.0,
                            height: 23.0,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                WavyAnimatedText(
                                  'Click here',
                                  textStyle: TextStyle(
                                    fontSize: 17.0,
                                    fontFamily: 'WorkSans',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.yellowAccent,
                                    height: 1.171875,
                                  ),
                                ),
                              ],
                              isRepeatingAnimation: true,
                              repeatForever: true,
                            ),
                          ),
                          Positioned(
                            left: 0.0,
                            top: 0.0,
                            right: null,
                            bottom: null,
                            width: 50.0,
                            height: 46.0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(64.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(64.0),
                                child: Image.asset(
                                  "assets/images/flutterlogo.png",
                                  color: null,
                                  fit: BoxFit.cover,
                                  colorBlendMode: BlendMode.dstATop,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}