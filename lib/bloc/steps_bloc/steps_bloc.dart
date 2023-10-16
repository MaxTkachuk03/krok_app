import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'steps_event.dart';
part 'steps_state.dart';

class StepsBloc extends Bloc<StepsEvent, StepsState> {
  StepsBloc() : super(StepsInitial()) {
    on<StepsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
