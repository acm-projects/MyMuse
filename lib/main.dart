import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mymuse/providers/user_provider.dart';
import 'package:mymuse/responsive/mobile_screen_layout.dart';
import 'package:mymuse/screens/homePage.dart';
import 'package:mymuse/screens/login_screen.dart';
import 'package:mymuse/screens/onboard_screen.dart';
import 'package:mymuse/screens/signup_screen.dart';
import 'package:mymuse/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyMuse',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        //home: Scaffold(body: Text('MyMuse')),
        //home: LoginScreen(),
        //home: createAccount(),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.active) {
              if(snapshot.hasData) {
                return MobileScreenLayout();
              } else if (snapshot.hasError) {
                return Center(child: Text('${snapshot.error}')
                );
              }
            }
            if(snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                )
              );
            }

            return Home();
          },
        )
      ),
    );
  }
}
