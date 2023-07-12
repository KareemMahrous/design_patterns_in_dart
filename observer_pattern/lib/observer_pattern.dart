

import 'package:observer_pattern/observer.dart';

class Subject {
  List<Observer> observers = []; //  late Subject subject;  

  late int state;

  int getState() {
    return state;
  }

  void setState(int state) {
    this.state = state;
    notifyAllObservers();
  }

  void attach(Observer observer) {
    observers.add(observer);
  }

  void notifyAllObservers() {
    for (Observer observer in observers) {
      observer.update();
    }
  }
}


 