import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/screen/repository/i_user_repository.dart';

class ListUsersBloc extends Cubit<ListUsersState> {
  final IUserRepository _userRepository;
  ListUsersBloc(this._userRepository) : super(ListUsersInitial());
  Future<void> fetchUsers() async {
    emit(ListUsersLoading());
    final users = await _userRepository.getAllUsers();
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
