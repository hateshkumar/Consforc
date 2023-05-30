class ConsforcBaseState {
  final bool initializing;
  final bool primaryBusy;
  final bool secondaryBusy;
  final bool tertiaryBusy;
  final bool idle;
  final bool error;
  final bool empty;
  final dynamic data;

  ConsforcBaseState({
    bool initializing = false,
    bool busy = false,
    bool idle = false,
    bool error = false,
    bool empty = false,
    bool secondaryBusy = false,
    bool tertiaryBusy = false,
    dynamic data = dynamic,
  })  : this.initializing = initializing,
        this.primaryBusy = busy,
        this.idle = idle,
        this.error = error,
        this.empty = empty,
        this.secondaryBusy = secondaryBusy,
        this.tertiaryBusy = tertiaryBusy,
        this.data = data;

  ConsforcBaseState.initializing() : this(initializing: true);

  ConsforcBaseState.primaryBusy() : this(busy: true);

  ConsforcBaseState.idle() : this(idle: true);

  ConsforcBaseState.error() : this(error: true);

  ConsforcBaseState.empty() : this(empty: true);

  ConsforcBaseState.secondaryBusy() : this(secondaryBusy: true);

  ConsforcBaseState.tertiaryBusy() : this(tertiaryBusy: true);

  ConsforcBaseState.response(data) : this(data: data);
}
