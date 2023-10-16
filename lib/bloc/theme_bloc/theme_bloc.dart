import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ThemeEvent>((event, emit) {
      if (event.switchTheme == true) {
        emit(ThemeState(switchTheme: event.switchTheme));
      }
      emit(ThemeState(switchTheme: event.switchTheme));
    });
  }
}
