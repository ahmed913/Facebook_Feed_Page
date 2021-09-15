
import 'package:facebook_feed_page/bloc/homebloc.dart';
import 'package:facebook_feed_page/bloc/homestates.dart';
import 'package:facebook_feed_page/screens/feedPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create :(BuildContext context) => HomeBloc()..getData(),
      child: BlocConsumer<HomeBloc , HomeStates > (
        listener: (context , state){},
        builder: (context , state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FaceBook',
            home: FeedPage(),
      );
    },
    ));
  }
}
