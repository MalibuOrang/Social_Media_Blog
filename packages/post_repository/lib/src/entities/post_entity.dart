import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user_repository/user_repository.dart';

class PostEntity {
  String postId;
  String post;
  DateTime createdAt;
  MyUser myUser;

  PostEntity(
      {required this.postId,
      required this.post,
      required this.createdAt,
      required this.myUser});

  Map<String, Object?> toDocument() {
    return {
      'postId': postId,
      'post': post,
      'createdAt': createdAt,
      'myUser': myUser.toEntity().toDocument(),
    };
  }

  static PostEntity fromDocument(Map<String, dynamic> doc) {
    return PostEntity(
      postId: doc['postId'] as String,
      post: doc['post'] as String,
      createdAt: (doc['createdAt'] as Timestamp).toDate(),
      myUser: MyUser.fromEntity(MyUserEntity.fromDocument(doc['myUser'])),
    );
  }

  List<Object?> get props => [postId, post, createdAt, myUser];
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
