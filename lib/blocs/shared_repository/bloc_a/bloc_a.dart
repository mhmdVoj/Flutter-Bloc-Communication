// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/shared_repository.dart';

part 'bloc_a_event.dart';
part 'bloc_a_state.dart';

class BlocA extends Bloc<BlocAEvent, BlocAState> {
  final SharedRepository sharedRepository;

  BlocA(this.sharedRepository)
      : super(TextUpdatedState("Shared Repository : Initial Text")) {
    on<UpdateTextEvent>((event, emit) {
      emit(
          TextUpdatedState("Shared Repository : Order Submitted Successfully"));
    });

    sharedRepository.addListener(() {
      if (sharedRepository.orederSubmitted) {
        add(const UpdateTextEvent());
      }
    });
  }
}
