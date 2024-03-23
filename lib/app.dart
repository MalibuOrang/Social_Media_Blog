import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_blog/app_view.dart';
import 'package:social_media_blog/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:user_repository/user_repository.dart';

class BlogApp extends StatelessWidget {
  final UserRepository userRepository;
  const BlogApp(this.userRepository, {super.key});
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<AuthenticationBloc>(
        create: (_) => AuthenticationBloc(userRepository: userRepository),
      )
    ], child: const MyAppView());
  }
}
