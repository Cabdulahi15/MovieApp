import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:mylogin_191/pages/home.dart';
// import 'package:mylogin_191/pages/login.dart';

import '../Home_Screen.dart';
import 'home.dart';
import 'login.dart';

class MiddleWare extends StatelessWidget {
  const MiddleWare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
      StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return Home_Screen();
        }
        else{
          return LoginPage();
        }
      },
    )
    )
    );
    
  }
}