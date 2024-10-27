sealed class Result<S,E extends Exception> {
  const Result();
  ///[result] es el resultado de la request, accedido de forma directa.
  ///Para evaluar si la request tuvo exito o no, mirar [onResult]
  get result;

  ///[onResult] es una funcion que nos permite ejecutar una funcion ([right])
  ///si la request fue exitosa, o una funcion ([left]) si tiro error.
  void onResult({required Function(E) left,required Function(S) right});
}

final class Success<S,E extends Exception> extends Result<S,E> {
  const Success(this.value);
  final S value;
  @override
  S get result=>value;

  @override
  void onResult({required Function(E error) left, required Function(S response) right}) {
    right(value);
  }
}

final class Failure<S,E extends Exception> extends Result<S,E> {
  const Failure(this.exception);
  final E exception;
  @override
  E get result=>exception;
    @override
  void onResult({required Function(E error) left, required Function(S response) right}) {
    left(exception);
  }
}
