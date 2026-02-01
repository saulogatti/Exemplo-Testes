import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/domain/use_case/user_actions.dart';
import 'package:testenovo/utils/data_result.dart';

class ListUsersBloc extends Cubit<ListUsersState> {
  final UserActions _userActions;
  ListUsersBloc(this._userActions) : super(ListUsersInitial());
  Future<void> fetchUsers() async {
    emit(ListUsersLoading());
    final result = await _userActions.fetchAllUsers();
    switch (result) {
      case Success(:final data):
        emit(ListUsersLoaded(data));
      case Failure(:final error):
        emit(ListUsersError(error));
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
