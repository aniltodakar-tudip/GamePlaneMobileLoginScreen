import 'dart:ui';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var checkBoxValue = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(19),
                child: Image(
                  image: AssetImage('images/GamePlan_red_on_white.png'),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(19, 29, 19, 9),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(19, 1, 19, 19),
                child: TextField(
                  obscureText: true,    //secure text entry for password.
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    //suffixIcon: Icon(Icons.remove_red_eye),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: (){
                        setState(() {
                        });
                        print('Should Change');
                      },
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(19, 1, 29, 1),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Checkbox(
                        fillColor: MaterialStateProperty.all(Colors.red),
                        checkColor: Colors.white,
                        activeColor: Colors.red,
                        value: checkBoxValue,
                        onChanged: (bool value) {
                          setState(() {
                            checkBoxValue = value;
                          });
                        },
                      ),
                      Text(
                        'REMEMBER ME',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
              ),

              Container(
                width: double.infinity,
                height: 49,
                //padding: EdgeInsets.fromLTRB(19, 19, 19, 19),
                margin: EdgeInsets.fromLTRB(19, 19, 19, 19),
                child: TextButton(
                  child: Text("Login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    print("Hi Pressed.");
                  },
                  onLongPress: () {
                    print("Hi LongPressed..");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 49,
                //padding: EdgeInsets.fromLTRB(19, 19, 19, 19),
                margin: EdgeInsets.fromLTRB(19, 1, 19, 1),
                child: TextButton(
                  child: Text("FORGOT YOUR PASSWORD?",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    //backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    print("Hi Pressed.");
                  },
                  onLongPress: () {
                    print("Hi LongPressed..");
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(19, 1, 19, 1),
                width: double.infinity,
                height: .5,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//class LoginScreen extends StatefulWidget {
//
//
//  @override
//  Widget build(BuildContext context) {
//
//    var checkBoxValue = false;
//
//    return Scaffold(
//      backgroundColor: Colors.white,
//      body: SafeArea(
//        child: Center(
//          child: Column(
//            //crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Container(
//                padding: EdgeInsets.all(19),
//                child: Image(
//                  image: AssetImage('images/GamePlan_red_on_white.png'),
//                ),
//              ),
//              Container(
//                color: Colors.white,
//                margin: EdgeInsets.fromLTRB(19, 29, 19, 9),
//                child: TextField(
//                  decoration: InputDecoration(
//                    border: OutlineInputBorder(),
//                    labelText: 'Email',
//                  ),
//                ),
//              ),
//              Container(
//                color: Colors.white,
//                margin: EdgeInsets.fromLTRB(19, 1, 19, 19),
//                child: TextField(
//                  obscureText: true,    //secure text entry for password.
//                  decoration: InputDecoration(
//                    border: OutlineInputBorder(),
//                    labelText: 'Password',
//                    //suffixIcon: Icon(Icons.remove_red_eye),
//                    suffixIcon: IconButton(
//                      icon: Icon(Icons.remove_red_eye),
//                      onPressed: (){
//                        print('Should Change');
//                      },
//
//                    ),
//                  ),
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.fromLTRB(19, 1, 29, 1),
//                alignment: Alignment.centerRight,
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: [
//                    Checkbox(
//                      //checkColor: Colors.red,
//                      value: checkBoxValue,
//                      onChanged: (bool value) {
//                        setState((){
//
//                        });
//                      },
//                    ),
//                    Text(
//                      'REMEMBER ME',
//                      style: TextStyle(
//                        color: Colors.red,
//                        fontSize: 15,
//                        fontWeight: FontWeight.w500,
//                      ),
//                    ),
//                  ],
//                )
//              ),
//
//              Container(
//                width: double.infinity,
//                height: 49,
//                //padding: EdgeInsets.fromLTRB(19, 19, 19, 19),
//                margin: EdgeInsets.fromLTRB(19, 19, 19, 19),
//                child: TextButton(
//                  child: Text("Login",
//                    style: TextStyle(
//                      fontSize: 18,
//                    ),
//                  ),
//                  style: TextButton.styleFrom(
//                    primary: Colors.white,
//                    backgroundColor: Colors.red,
//                  ),
//                  onPressed: () {
//                    print("Hi Pressed.");
//                  },
//                  onLongPress: () {
//                    print("Hi LongPressed..");
//                  },
//                ),
//              ),
//              Container(
//                width: double.infinity,
//                height: 49,
//                //padding: EdgeInsets.fromLTRB(19, 19, 19, 19),
//                margin: EdgeInsets.fromLTRB(19, 1, 19, 1),
//                child: TextButton(
//                  child: Text("FORGOT YOUR PASSWORD?",
//                    style: TextStyle(
//                      fontSize: 18,
//                    ),
//                  ),
//                  style: TextButton.styleFrom(
//                    primary: Colors.red,
//                    //backgroundColor: Colors.red,
//                  ),
//                  onPressed: () {
//                    print("Hi Pressed.");
//                  },
//                  onLongPress: () {
//                    print("Hi LongPressed..");
//                  },
//                ),
//              ),
//              Container(
//                margin: EdgeInsets.fromLTRB(19, 1, 19, 1),
//                width: double.infinity,
//                height: .5,
//                color: Colors.black87,
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
