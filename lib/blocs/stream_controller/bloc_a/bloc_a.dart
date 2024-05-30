// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../utils/event_stram.dart';

part 'bloc_a_event.dart';
part 'bloc_a_state.dart';

class BlocA extends Bloc<BlocAEvent, BlocAState> {
  final EventStream eventStream;

  BlocA(this.eventStream)
      : super(const TextUpdatedState("Stream Controller : Initial Text")) {
    on<UpdateTextEvent>((event, emit) {
      emit(const TextUpdatedState(
          "Stream Controller : Order Submitted Successfully"));
    });

    eventStream.stream.listen((_) {
      add(UpdateTextEvent());
    });
  }
}
