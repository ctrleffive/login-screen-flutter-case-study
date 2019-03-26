import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Center(
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 80, 50, 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hello',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Create an account to continue.',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                  fontSize: 13,
                                )),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: TextStyle(
                                  fontSize: 13,
                                )),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontSize: 13,
                                ),
                                suffixIcon: Icon(Icons.remove_red_eye)),
                          ),
                          SizedBox(height: 50),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 30,
                                      color: Theme.of(context).primaryColor.withOpacity(0.2),
                                      offset: Offset(0, 20),
                                      spreadRadius: 1),
                                ]),
                            child: FlatButton(
                              onPressed: () {},
                              textColor: Colors.white,
                              child: Text('CREATE'),
                            ),
                          ),
                          SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Already have an account?',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              Text('Sign In', style: TextStyle(
                                fontWeight: FontWeight.w700
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
