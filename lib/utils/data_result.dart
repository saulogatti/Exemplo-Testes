import 'dart:async';

sealed class DataResult<S, F> {
  DataResult();
  factory DataResult.failure(F error) = Failure<S, F>;
  factory DataResult.success(S data) = Success<S, F>;

  FutureOr<T> fold<T>(
    T Function(S data) onSuccess,
    T Function(F error) onFailure,
  ) {
    if (this is Success<S, F>) {
      return onSuccess((this as Success<S, F>).data);
    } else if (this is Failure<S, F>) {
      return onFailure((this as Failure<S, F>).error);
    }
    throw StateError('Invalid DataResult state');
  }

  void when({
    required void Function(S data) success,
    required void Function(F error) failure,
  }) {
    if (this is Success<S, F>) {
      success((this as Success<S, F>).data);
    } else if (this is Failure<S, F>) {
      failure((this as Failure<S, F>).error);
    }
  }
}

class Failure<S, F> extends DataResult<S, F> {
  final F error;

  Failure(this.error);
}

class Success<S, F> extends DataResult<S, F> {
  final S data;

  Success(this.data);
}
