
import 'dart:async';

class StateControl implements StateAbstractControl {
  final StreamController streamController;

  StateControl() : streamController = StreamController();

  void notifyListeners() {
    streamController.add('change');
  }

  void init() {
  }

  void dispose() {
    streamController.close();
  }
}

abstract class StateAbstractControl {
  void init();
  void dispose();
  void notifyListeners();
}