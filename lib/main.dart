import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/bg.jpg'),
            height: MediaQuery.of(context).size.height,
            colorBlendMode: BlendMode.multiply,
            alignment: Alignment.center,
            // NOTE: Adjust your bg brightness here..
            color: Colors.black.withOpacity(0.7),
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Welcome', style: TextStyle(fontSize: 35)),
                      SizedBox(height: 10),
                      Text('Sign In to Continue', style: TextStyle(fontSize: 18, color: Colors.white70)),
                      SizedBox(height: 30),
                      Form(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Username',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 0
                                  )
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 0
                                  )
                                )
                              ),
                            ),
                            // SizedBox(height: 10),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 0
                                  )
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 0
                                  )
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      MaterialButton(
                        onPressed: () {},
                        child: Text('SIGN IN'),
                        color: Colors.red.shade900,
                        minWidth: MediaQuery.of(context).size.width,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.face, size: 20),
                            SizedBox(width: 10),
                            Text('Connect With Facebook')
                          ],
                        ),
                        color: Colors.blue.shade900,
                        minWidth: MediaQuery.of(context).size.width,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text('Forgot my password!'),
                        minWidth: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Dont have an account?'),
                      MaterialButton(
                        onPressed: () {},
                        child: Text('Sign Up'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}