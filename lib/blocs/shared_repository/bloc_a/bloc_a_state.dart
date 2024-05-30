part of 'bloc_a.dart';

class BlocAState extends Equatable {
  const BlocAState();

  @override
  List<Object> get props => [];
}

class TextUpdatedState extends BlocAState {
  final String text;
  TextUpdatedState(this.text);
  @override
  List<Object> get props => [text];
}
