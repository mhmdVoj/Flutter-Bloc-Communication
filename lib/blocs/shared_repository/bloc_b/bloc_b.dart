import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/shared_repository.dart';

part 'bloc_b_event.dart';
part 'bloc_b_state.dart';

class BlocB extends Bloc<BlocBEvent, BlocBState> {
  final SharedRepository sharedRepository;

  BlocB(this.sharedRepository) : super(OrderSubmittedState()) {
    on<SubmitOrderEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      sharedRepository.submitOrder();
      emit(OrderSubmittedState());
    });
  }
}
