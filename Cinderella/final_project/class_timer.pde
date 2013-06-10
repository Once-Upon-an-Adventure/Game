class Timer {
  int time;
  int currentTime;
  int oldTime;

  Timer(int time_) {
    time = time_;
    currentTime = millis();
    oldTime = 0;
  }
  void update() {
    currentTime = millis();
  }
  //This boolean function will return a value of true or false when used
  boolean checkTime() {
    if (currentTime-oldTime >= time) {
      oldTime = currentTime;
      time=int(random(2000,5000));
      return true;
    }
    else {
      return false;
    }
  }
}

