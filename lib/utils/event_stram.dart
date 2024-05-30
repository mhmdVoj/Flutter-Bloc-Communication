import 'dart:async';

class EventStream {
  final _controller = StreamController<void>.broadcast();

  Stream<void> get stream => _controller.stream;

  void submitOrder() {
    _controller.add(null);
  }

  void dispose() {
    _controller.close();
  }
}
