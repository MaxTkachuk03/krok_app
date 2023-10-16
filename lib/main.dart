import 'package:flutter/material.dart';
import 'package:krok_app/krok_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:krok_app/repository/repository.dart';
import 'package:get_it/get_it.dart';
import 'package:pedometer/pedometer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  Stream<StepCount> stepCountStream = Pedometer.stepCountStream;
  Stream<PedestrianStatus> pedestrianStatusStream =
      Pedometer.pedestrianStatusStream;

  GetIt.instance.registerLazySingleton(
    () => StepCounter(
      stepCountStream: stepCountStream,
      pedestrianStatusStream: pedestrianStatusStream,
    ),
  );

  runApp(const MyApp());
}
