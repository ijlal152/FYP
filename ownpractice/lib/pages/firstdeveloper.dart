import 'package:cube_transition/cube_transition.dart';
import 'package:flutter/material.dart';
import 'package:ownpractice/main.dart';
import 'package:ownpractice/pages/homepage.dart';
import 'package:ownpractice/pages/seconddeveloper.dart';
import 'package:slimy_card/slimy_card.dart';
//import 'package:slimycardanimation/anotherpage.dart';
import 'package:flutter/services.dart';

class FirstDeveloper extends StatelessWidget {
  const FirstDeveloper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstDeveloperFunction(),
    );
  }
}
class FirstDeveloperFunction extends StatefulWidget {
  const FirstDeveloperFunction({Key? key}) : super(key: key);

  @override
  State<FirstDeveloperFunction> createState() => _FirstDeveloperFunctionState();
}

class _FirstDeveloperFunctionState extends State<FirstDeveloperFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Developer'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 16, 39, 83),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Container(
                child: StreamBuilder(
                  initialData: false,
                  stream: slimyCard.stream,
                  builder: ((BuildContext context, AsyncSnapshot snapshot){
                    return Flexible(
                      child: ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        children: <Widget>[
                          SizedBox(height: 5),
                          SlimyCard(
                            //color: Color.fromARGB(127, 91, 109, 145),
                            color: Colors.teal,
                            //topCardHeight: 330,
                            topCardWidget: topCardWidget((snapshot.data)
                                ? 'assets/images/testimage.jpg'
                                : 'assets/images/testimage.jpg'),
                            bottomCardWidget: bottomCardWidget(),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: (){
                  Navigator.of(context).push(CubePageRoute(
                    enterPage: SecondDeveloper(),
                    duration: const Duration(milliseconds: 900),
                  )
                  );
                },
                label: Text('Next Developer'),
                icon: Icon(
                  Icons.forward,
                  size: 26,
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: (){
                  Navigator.of(context).push(CubePageRoute(
                    enterPage: FirstScreen(),
                    //exitPage: this,
                    duration: const Duration(milliseconds: 900),
                  )
                  );
                },
                label: Text('Back'),
                icon: Icon(
                  Icons.arrow_back,
                  size: 26,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget topCardWidget(String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage(imagePath)),
            boxShadow: [
              BoxShadow(
                //color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Ijlal Hussain',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        SizedBox(height: 15),
        Text(
          'Flutter Developer.',
          style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        //SizedBox(height: 10),
      ],
    );
  }

  Widget bottomCardWidget() {
    return Text(
      //'It doesn\'t matter \nwhat your name is.',
      'Helping one person might not change the whole world, '
          'but it could change the world for one person....',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}

