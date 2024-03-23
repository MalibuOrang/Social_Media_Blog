part of 'get_post_bloc.dart';

abstract class GetPostState extends Equatable {
  const GetPostState();

  @override
  List<Object> get props => [];
}

class GetPostInitial extends GetPostState {}

class GetPostLoading extends GetPostState {}

class GetPostFailure extends GetPostState {}

class GetPostSuccess extends GetPostState {
  final List<Post> post;

  const GetPostSuccess(this.post);
}
