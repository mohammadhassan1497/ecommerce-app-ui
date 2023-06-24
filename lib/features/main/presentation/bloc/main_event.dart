part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

class SetMainBottomBarEvent extends MainEvent {
  final int index;

  const SetMainBottomBarEvent({required this.index});

  @override
  List<Object> get props => [index];
}
