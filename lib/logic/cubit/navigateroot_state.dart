part of 'navigateroot_cubit.dart';



class NavigaterootInitial extends Equatable {
  final NavbarItem navbarItem;
  final int index;

  NavigaterootInitial(this.navbarItem,this.index);

  @override 
  List<Object> get props => [this.navbarItem,this.index];
}
