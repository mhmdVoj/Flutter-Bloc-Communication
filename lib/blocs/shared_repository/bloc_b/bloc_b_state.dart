part of 'bloc_b.dart';

abstract class BlocBState extends Equatable {
  const BlocBState();

  @override
  List<Object> get props => [];
}

class BlocBInitial extends BlocBState {}

class OrderSubmittedState extends BlocBState {
  @override
  List<Object> get props => [];
}
