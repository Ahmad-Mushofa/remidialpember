// 230441100191-AHMAD MUSHOFA
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyB1XKmLxULA0kAV249Vuar5Xt8QFt1dHLY',
      appId: '1:123456789:android:abcdef123456789',
      messagingSenderId: '123456789',
      projectId: 'pemberremidi-default-rtdb',
      databaseURL: 'https://pemberremidi-default-rtdb.firebaseio.com',
      storageBucket: 'pemberremidi-default-rtdb.appspot.com',
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kegiatan Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
