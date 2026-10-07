import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/bloc/ListData/listdata_bloc.dart';
import 'package:todo_app_bloc/bloc/ListData/listdata_state.dart';
import 'package:todo_app_bloc/utils/post_status.dart';



class PostlistScreen extends StatefulWidget {
  const PostlistScreen({super.key});

  @override
  State<PostlistScreen> createState() => _PostlistScreenState();
}

class _PostlistScreenState extends State<PostlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post List Screen")),
      body: BlocBuilder<PostListBloc, PostListStates>(
        builder: (context, state) {
          switch (state.status) {
            case PostStatus.loading:
              return CircularProgressIndicator();
            case PostStatus.success:
              return ListView.builder(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final item = state.posts[index];
                  return ListTile(
                    title: Text(item.postId.toString()),
                    subtitle: Text(item.body.toString()),
                  );
                },
              );
            case PostStatus.failed:
              return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
