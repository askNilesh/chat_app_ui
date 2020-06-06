import 'package:chat/screens/home_screen.dart';
import 'package:chat/widgets/category_selector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>( //      <--- ChangeNotifierProvider
        create: (context) => MyModel(),
        child: MaterialApp(
          title: 'Chat UI',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.deepPurpleAccent,
            accentColor: Color(0xFFFEF9EB),
          ),
          home: HomeScreen(),
        )
    );
  }

}
