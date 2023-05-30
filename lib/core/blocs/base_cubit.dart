import 'package:consforc/config/export.dart';

abstract class ConsforcBaseCubit<T extends ConsforcBaseState> extends Cubit<T> {
  ConsforcBaseCubit(T state) : super(state);

  /// Super.emit throws exception on [isClosed].
  /// This override suppresses the exception with early return.
  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
