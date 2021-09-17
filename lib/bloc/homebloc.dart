import 'dart:async';

import 'package:facebook_feed_page/data/user.dart';
import 'package:facebook_feed_page/models/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'homestates.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(InitShowPostsState());
  static HomeBloc get(context) => BlocProvider.of(context);
  List<Post> delayPosts = [];

  void getData() {
    emit(LoadingShowPostsState());
    Timer(const Duration(seconds: 2), () {
      delayPosts = posts;

      emit(GetPostsState());
    });
  }
}
