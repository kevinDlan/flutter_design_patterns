abstract interface class SmartDevice {
  void makeCall();
  void sendEmail();
  void browseInternet();
  void takePicture();
}

abstract interface class Phone {
  void makeCall();
}

abstract interface class Email {
  void sendEmail();
}

abstract interface class Browser {
  void browseInternet();
}

abstract interface class Camera {
  void takePicture();
}

class SmartPhone implements Phone, Email, Browser, Camera {
  @override
  void browseInternet() {
    // TODO: implement browseInternet
  }

  @override
  void makeCall() {
    // TODO: implement makeCall
  }

  @override
  void sendEmail() {
    // TODO: implement sendEmail
  }

  @override
  void takePicture() {
    // TODO: implement takePicture
  }
}

class SmartWatch implements Phone {
  @override
  void makeCall() {
    // TODO: implement makeCall
  }
}
