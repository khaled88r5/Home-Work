// Abstract class defining common functionalities
abstract class SmartDevice {
  bool isOn = false;

  void turnOn() {
    isOn = true;
    print('${runtimeType} turned ON');
  }

  void turnOff() {
    isOn = false;
    print('${runtimeType} turned OFF');
  }
}

// Light class with brightness adjustment
class Light extends SmartDevice {
  int brightness = 50;

  void setBrightness(int level) {
    brightness = level;
    print('Light brightness set to $brightness%');
  }
}

// Air Conditioner with temperature control
class AirConditioner extends SmartDevice {
  double temperature = 24.0;

  void setTemperature(double temp) {
    temperature = temp;
    print('Air Conditioner set to $temperature°C');
  }
}

// Security Camera with motion detection
class SecurityCamera extends SmartDevice {
  bool motionDetection = false;

  void enableMotionDetection() {
    motionDetection = true;
    print('Motion detection enabled');
  }

  void disableMotionDetection() {
    motionDetection = false;
    print('Motion detection disabled');
  }
}

// SmartHomeSystem to control multiple devices
class SmartHomeSystem {
  List<SmartDevice> devices = [];

  void addDevice(SmartDevice device) {
    devices.add(device);
  }

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }
}

// Example usage
void main() {
  var light = Light();
  var ac = AirConditioner();
  var camera = SecurityCamera();

  var home = SmartHomeSystem();
  home.addDevice(light);
  home.addDevice(ac);
  home.addDevice(camera);

  home.turnAllOn();
  ac.setTemperature(22);
  light.setBrightness(75);
  camera.enableMotionDetection();
}
