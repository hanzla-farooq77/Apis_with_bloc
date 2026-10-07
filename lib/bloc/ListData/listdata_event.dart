import 'package:equatable/equatable.dart';

abstract class PostListEvent extends Equatable {
  PostListEvent();
  @override
  List<Object?> get props => [];
}

class FetchPost extends PostListEvent {}
