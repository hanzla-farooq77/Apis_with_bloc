import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_app_bloc/utils/post_status.dart';

import '../../model/post_model.dart';

class PostListStates extends Equatable {
  final List<PostModel> posts;
  final PostStatus status;
  final String message;
  PostListStates({
    this.posts = const <PostModel>[],
    this.status = PostStatus.loading,
    this.message = ''
  });

  PostListStates copyWith({List<PostModel>? posts, PostStatus? status, String? message}) {
    return PostListStates(
      posts: posts ?? this.posts,
      status: status ?? this.status,
      message: message?? this.message
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [posts, status, message];
}
