import 'package:bloc/bloc.dart';
import 'bottom_navigation.dart';

class BottomNavigationMenuBloc
    extends Bloc<BottomNavigationMenuEvent, BottomNavigationMenuState> {
  @override
  BottomNavigationMenuState get initialState =>
      BottomNavigationMenuInitialState();

  @override
  Stream<BottomNavigationMenuState> mapEventToState(
      BottomNavigationMenuEvent event) async* {
    if (event is BottomNavigationMenuChangeEvent) {
      yield BottomNavigationMenuChangeState(event.bottomMenuIndex);
    }
  }
}
