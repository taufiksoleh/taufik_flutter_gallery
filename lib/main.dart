import 'package:audiobook/constants/asset_image_const.dart';
import 'package:audiobook/widgets/buttonradius_widget.dart';
import 'package:audiobook/widgets/textfieldradius_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 325,
              decoration: BoxDecoration(
                  color: Color(0xFF00A1FC),
                  image: DecorationImage(image: AssetImage(AssetImageConst.LOGIN_HEADER)),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xFF0090F2),
                    ),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30)
                          )
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        TextFieldRadius(
                          type: TextInputType.emailAddress,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                          radius: 30,
                          hintText: "Email",
                        ),
                        SizedBox(height: 16),
                        TextFieldRadius(
                          obscureText: true,
                          type: TextInputType.visiblePassword,
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                          radius: 30,
                          hintText: "Password",
                        ),
                        SizedBox(height: 16),
                        ButtonRadius(
                          buttonText: "Login",
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          margin: EdgeInsets.all(30),
                          radius: 30,
                          onTap: (){

                          },
                        ),
                        SizedBox(height: 26),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Expanded(
                              child: ButtonRadius(
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                icon: Image.asset(AssetImageConst.GOOGLE, width: 20),
                                color: Colors.white,
                                buttonText: "Sign in",
                                textColor: Colors.black,
                                margin: EdgeInsets.all(30),
                                radius: 30,
                                onTap: (){

                                },
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: ButtonRadius(
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                                icon: Image.asset(AssetImageConst.FACEBOOK, width: 20),
                                color: Colors.white,
                                buttonText: "Sign in",
                                textColor: Colors.black,
                                margin: EdgeInsets.all(30),
                                radius: 30,
                                onTap: (){

                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        ButtonRadius(
                          fontSize: 20,
                          color: Colors.white,
                          textColor: Colors.black,
                          buttonText: "Forgot password?",
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          margin: EdgeInsets.all(30),
                          radius: 30,
                          onTap: (){

                          },
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
        ],
        )
      )
    );
  }
}
