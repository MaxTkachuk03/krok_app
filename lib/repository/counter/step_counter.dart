import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

class StepCounter {
  StepCounter({
    required this.stepCountStream,
    required this.pedestrianStatusStream,
  });

  Stream<StepCount> stepCountStream;
  Stream<PedestrianStatus> pedestrianStatusStream;
  String status = '?', steps = '?';

  Future<void> getPermission() async {
    const permission = Permission.activityRecognition;
    if (await permission.isDenied) {
      permission.request();
    }

    permission.request();
  }

  String formatDate(DateTime d) {
    return d.toString().substring(0, 19);
  }

  String onStepCount(StepCount event) {
    print(event);
    steps = event.steps.toString();
    return steps;
  }

  String onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    status = event.status;
    return status;
  }

  void onPedestrianStatusError(Object? error) {
    print('onPedestrianStatusError: $error');

    status = 'Pedestrian Status not available';

    print(status);
  }

  void onStepCountError(Object? error) {
    print('onStepCountError: $error');
    steps = 'Step Count not available';
  }

  void initPlatformState() {
    stepCountStream.listen(onStepCount).onError(onStepCountError);

    pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);
  }
}
