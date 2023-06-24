import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'main_event.dart';
part 'main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainEvent>((event, emit) {
      if (event is SetMainBottomBarEvent) {
        emit(MainBottomBarLoadState(index: event.index));
      }
    });
  }
}
