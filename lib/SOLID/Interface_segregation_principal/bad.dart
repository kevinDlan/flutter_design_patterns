abstract interface class SmartDevice {
  void makeCall();
  void sendEmail();
  void browseInternet();
  void takePicture();
}

class SmartPhone implements SmartDevice {
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

class SmartWatch implements SmartDevice {
  // This class don't need this feature, that is the problem
  @override
  void browseInternet() {
    // TODO: implement browseInternet
  }

  @override
  void makeCall() {
    // TODO: implement makeCall
  }

  // This class don't need this feature, that is the problem
  @override
  void sendEmail() {
    // TODO: implement sendEmail
  }

  @override
  void takePicture() {
    // TODO: implement takePicture
  }
}
