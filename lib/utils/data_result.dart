sealed class DataResult<S, F> {
  DataResult();
  factory DataResult.failure(F error) = Failure<S, F>;
  factory DataResult.success(S data) = Success<S, F>;
}

class Failure<S, F> extends DataResult<S, F> {
  final F error;

  Failure(this.error);
}

class Success<S, F> extends DataResult<S, F> {
  final S data;

  Success(this.data);
}
