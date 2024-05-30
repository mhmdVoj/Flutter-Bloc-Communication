// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:event_bus_plus/res/event_bus.dart';

import '../../../utils/di.dart';
import '../../../utils/submit_order_event.dart';

part 'bloc_a_event.dart';
part 'bloc_a_state.dart';

class BlocA extends Bloc<BlocAEvent, BlocAState> {
  BlocA() : super(const TextUpdatedState("Event Bus : Initial Text")) {
    on<UpdateTextEvent>((event, emit) {
      emit(const TextUpdatedState("Event Bus : Order Submitted Successfully"));
    });

    getIt<EventBus>().on<SubmitOrderSuccessEvent>().listen((event) {
      add(UpdateTextEvent());
    });
  }
}
