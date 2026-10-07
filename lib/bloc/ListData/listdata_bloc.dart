import 'package:bloc/bloc.dart';
import 'package:todo_app_bloc/repository/post_repository.dart';

import '../../utils/post_status.dart';
import 'listdata_event.dart';
import 'listdata_state.dart';

class PostListBloc extends Bloc<PostListEvent, PostListStates> {
  PostRepository repository = PostRepository();
  PostListBloc() : super(PostListStates()) {
    on<FetchPost>(_fetchPost);
  }

  void _fetchPost(FetchPost event, Emitter<PostListStates> emit) {
    repository.fetchPosts().then((value) {
      emit(
        state.copyWith(
          status: PostStatus.success,
          message: 'Success',
          posts: value,
        ),
      );
    });
  }
}
