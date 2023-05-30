
import 'package:consforc/config/export.dart';

typedef ConsforcBlocWidgetBuilder<S extends ConsforcBaseState,
        T extends ConsforcBaseCubit>
    = Widget Function(BuildContext context, S state, T bloc);
typedef ConsforcBlocWidgetListener<S extends ConsforcBaseState,
        T extends ConsforcBaseCubit>
    = Widget Function(BuildContext context, S state, T bloc);

class CubitProvider<S extends ConsforcBaseState, T extends ConsforcBaseCubit<S>>
    extends StatelessWidget {
  final Create<T> create;
  final bool lazy;

  final ConsforcBlocWidgetBuilder<S, T> builder;
  final ConsforcBlocWidgetListener<S, T>? listener;

  final BlocBuilderCondition<S>? buildWhen;

  final BlocListenerCondition<S>? listenWhen;
  const CubitProvider({
    Key? key,
    required this.create,
    required this.builder,
    this.listener,
    this.buildWhen,
    this.listenWhen,
    this.lazy = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<T>(
      lazy: lazy,
      create: create,
      child: BlocConsumer<T, S>(
        builder: (context, state) {
          final bloc = context.read<T>();
          return builder(context, state, bloc);
        },
        listener: (context, state) {
          if (listener == null)
            return;
          else {
            final bloc = context.read<T>();
            listener!(context, state, bloc);
          }
        },
        buildWhen: buildWhen,
        listenWhen: listenWhen,
      ),
    );
  }
}
