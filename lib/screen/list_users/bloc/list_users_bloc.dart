import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/core/models/user/user_model.dart';
import 'package:testenovo/core/repository/user_repository.dart';
import 'package:testenovo/data/source/user_data_source.dart';

class ListUsersBloc extends Cubit<ListUsersState> {
  ListUsersBloc() : super(ListUsersInitial());
  Future<void> fetchUsers() async {
    emit(ListUsersLoading());
    final users = await UserRepository(UserDataSource()).getAllUsers();
    if (users.isNotEmpty) {
      emit(ListUsersLoaded(users));
    } else {
      emit(ListUsersError('Nenhum usuário encontrado.'));
    }
  }
}

class ListUsersError extends ListUsersState {
  final String message;
  ListUsersError(this.message);
}

class ListUsersInitial extends ListUsersState {}

class ListUsersLoaded extends ListUsersState {
  final List<UserModel> users;
  ListUsersLoaded(this.users);
}

class ListUsersLoading extends ListUsersState {}

sealed class ListUsersState {}
