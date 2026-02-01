import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/di/app_injection.dart';
import 'package:testenovo/domain/use_case/user_actions.dart';
import 'package:testenovo/screen/list_users/bloc/list_users_bloc.dart';
import 'package:testenovo/screen/list_users/card_add_user.dart';
import 'package:testenovo/screen/list_users/user_card.dart';

@RoutePage()
class ListUsersScreen extends StatefulWidget implements AutoRouteWrapper {
  const ListUsersScreen({super.key});

  @override
  State<ListUsersScreen> createState() => _ListUsersScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return ListUsersBloc(getIt<UserActions>());
      },
      child: this,
    );
  }
}

class _ListUsersScreenState extends State<ListUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListUsersBloc, ListUsersState>(
      builder: (context, state) {
        switch (state) {
          case ListUsersLoading():
            return const Center(child: CircularProgressIndicator());
          case ListUsersLoaded():
            final list = state.users;
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CardAddUser(
                    onTap: save,
                    textNameController: TextEditingController(),
                  ),
                ),
                SliverList.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final user = list[index];
                    return UserCard(
                      firstName: user.firstName!,
                      email: user.email!,
                    );
                  },
                ),
              ],
            );
          case ListUsersError():
            return Center(child: Text(state.message));
          // You can handle different states here
          default:
        }
        return Column(
          children: [Center(child: Text('This is the List Users Screen!'))],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<ListUsersBloc>().fetchUsers();
  }

  void save() {
    context.read<ListUsersBloc>().save('New User');
  }
}
