import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tic_tac_toe/ui/home_page.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntoPage(),
    );
  }
}

class IntoPage extends StatefulWidget {
  @override
  _IntoPageState createState() => _IntoPageState();
}

class _IntoPageState extends State<IntoPage> {
  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Container(
                    child: Text(
                      "TIC TAC TOE",
                      style: TextStyle(
                          fontSize: 30, letterSpacing: 2, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: AvatarGlow(
                    endRadius: 140,
                    duration: Duration(seconds: 2),
                    glowColor: color,
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 1),
                    startDelay: Duration(seconds: 1),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.none),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[900],
                        radius: 80,
                        child: Container(
                          child: Image.asset(
                            "assets/logo.png",
                            color: color,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Text(
                    "sunnatilloshavkatov@gmail.com",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () => pushPage(context, HomePage()),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 60, left: 40, right: 40),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      color: color,
                      child: Center(
                        child: Text(
                          'PLAY GAME',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future pushPage(BuildContext context, Widget page) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
