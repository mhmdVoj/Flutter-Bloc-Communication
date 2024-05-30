import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:event_bus_plus/res/event_bus.dart';

import '../../../utils/di.dart';
import '../../../utils/submit_order_event.dart';

part 'bloc_b_event.dart';
part 'bloc_b_state.dart';

class BlocB extends Bloc<BlocBEvent, BlocBState> {
  BlocB() : super(OrderSubmittedState()) {
    on<SubmitOrderEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      getIt<EventBus>().fire(SubmitOrderSuccessEvent());
      emit(OrderSubmittedState());
    });
  }
}
