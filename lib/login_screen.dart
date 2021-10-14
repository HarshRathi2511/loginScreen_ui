import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 600,
            color: Colors.blue.shade400,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Center(

                    'Sign In to continue',

                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                ),
                SizedBox(height: 40),

              
                 Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Center(
                      child: Text(
                    'Hacktober fest op',

                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          'Password',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        child: Text('Forgot Password ?',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        onChanged: (val) {
                          setState(() {
                            _checkbox = val;
                          });
                        },
                        value: _checkbox,
                      ),
                      Container(
                        child: Text('Remember me',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: ElevatedButton(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Text(
                      '- OR -',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(height: 20),
                    Text('Sign in with'),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60, width: 60,
                        // child: FittedBox(child: Text('Image')),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/logos/Screenshot_20210713-181602.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60, width: 60,
                        // child: FittedBox(child: Text('Image')),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/logos/Screenshot_20210713-181724.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60, width: 60,
                        // child: FittedBox(child: Text('Image')),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/logos/Screenshot_20210713-182515.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up to continue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
