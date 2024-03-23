import 'package:post_repository/post_repository.dart';
import 'package:user_repository/user_repository.dart';

class Post {
  String postId;
  String post;
  DateTime createdAt;
  MyUser myUser;
  Post(
      {required this.postId,
      required this.post,
      required this.createdAt,
      required this.myUser});

  static final empty = Post(
    postId: '',
    post: '',
    createdAt: DateTime.now(),
    myUser: MyUser.empty,
  );
  Post copyWith({
    String? postId,
    String? post,
    DateTime? createdAt,
    MyUser? myUser,
  }) {
    return Post(
      postId: postId ?? this.postId,
      post: post ?? this.post,
      createdAt: createdAt ?? this.createdAt,
      myUser: myUser ?? this.myUser,
    );
  }

  bool get isEmpty => this == Post.empty;
  bool get isNotEmpty => this != Post.empty;
  PostEntity toEntity() {
    return PostEntity(
      postId: postId,
      post: post,
      createdAt: createdAt,
      myUser: myUser,
    );
  }

  static Post fromEntity(PostEntity entity) {
    return Post(
        postId: entity.postId,
        post: entity.post,
        createdAt: entity.createdAt,
        myUser: entity.myUser);
  }

  @override
  String toString() {
    return '''PostEntity{
      postId: $postId,
      post: $post,
      cratedAt: $createdAt,
      myUser: $myUser,
    }''';
  }
}
