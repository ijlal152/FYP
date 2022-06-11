import 'package:cube_transition/cube_transition.dart';
import 'package:flutter/material.dart';
import 'package:ownpractice/pages/firstdeveloper.dart';
import 'package:slimy_card/slimy_card.dart';

class SecondDeveloper extends StatelessWidget {
  const SecondDeveloper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondDeveloperFunction(),
    );
  }
}
class SecondDeveloperFunction extends StatefulWidget {
  const SecondDeveloperFunction({Key? key}) : super(key: key);

  @override
  State<SecondDeveloperFunction> createState() => _SecondDeveloperFunctionState();
}

class _SecondDeveloperFunctionState extends State<SecondDeveloperFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Developer'),
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
                                ? 'assets/images/b1.jpeg'
                                : 'assets/images/b1.jpeg'),
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

          //SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: (){
                  Navigator.of(context).push(CubePageRoute(
                    enterPage: FirstDeveloper(),
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
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Basla Azhar',
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
