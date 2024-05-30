import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../utils/event_stram.dart';

part 'bloc_b_event.dart';
part 'bloc_b_state.dart';

class BlocB extends Bloc<BlocBEvent, BlocBState> {
  final EventStream eventStream;

  BlocB(this.eventStream) : super(OrderSubmittedState()) {
    on<SubmitOrderEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      eventStream.submitOrder();
      emit(OrderSubmittedState());
    });
  }
}
