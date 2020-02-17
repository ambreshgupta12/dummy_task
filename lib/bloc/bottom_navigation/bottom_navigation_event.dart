class BottomNavigationMenuEvent {}

class BottomNavigationMenuChangeEvent extends BottomNavigationMenuEvent {
  int bottomMenuIndex ;// initial page Index;

  BottomNavigationMenuChangeEvent({this.bottomMenuIndex});
}
