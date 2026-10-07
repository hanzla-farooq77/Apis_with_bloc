import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/ui/postlist_screen.dart';

import 'bloc/ListData/listdata_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostListBloc(),
      child: MaterialApp(
   home: PostlistScreen(),
      ),
    );
  }
}

