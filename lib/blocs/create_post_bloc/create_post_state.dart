part of 'create_post_bloc.dart';

abstract class CreatePostState extends Equatable {
  const CreatePostState();

  @override
  List<Object> get props => [];
}

class CreatePostInitial extends CreatePostState {}

class CreatePostLoading extends CreatePostState {}

class CreatePostFailure extends CreatePostState {}

class CreatePostSuccess extends CreatePostState {
  final Post post;
  const CreatePostSuccess(this.post);
}
