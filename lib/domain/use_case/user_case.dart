abstract interface class UserCase<Input, Output> {
  Future<Output> call(Input input);
}

