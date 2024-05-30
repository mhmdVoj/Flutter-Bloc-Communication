part of 'bloc_a.dart';

class BlocAEvent extends Equatable {
  const BlocAEvent();

  @override
  List<Object> get props => [];
}

class UpdateTextEvent extends BlocAEvent {
  const UpdateTextEvent();
}
