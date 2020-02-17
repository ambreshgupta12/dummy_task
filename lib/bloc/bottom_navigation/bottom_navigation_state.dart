class BottomNavigationMenuState {}
class BottomNavigationMenuInitialState extends BottomNavigationMenuState {}


class BottomNavigationMenuLoadingState extends BottomNavigationMenuState{
  BottomNavigationMenuLoadingState();

}

class BottomNavigationMenuChangeState extends BottomNavigationMenuState {
  int bottomMenuIndex;
  BottomNavigationMenuChangeState(this.bottomMenuIndex);
}

