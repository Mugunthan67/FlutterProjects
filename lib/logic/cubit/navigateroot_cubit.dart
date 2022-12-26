import 'package:bloc/bloc.dart';
import 'package:marlo_project/logic/cubit/nav_bar_item.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
part 'navigateroot_state.dart';

class NavigaterootCubit extends Cubit<NavigaterootInitial> {
  NavigaterootCubit() : super(NavigaterootInitial(NavbarItem.home,0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch(navbarItem) {
      case NavbarItem.home:
      emit(NavigaterootInitial(NavbarItem.home,0,));
      break;
      case NavbarItem.loan:
      emit(NavigaterootInitial(NavbarItem.loan,1));
      break;
      case NavbarItem.contract:
      emit(NavigaterootInitial(NavbarItem.contract,2));
      break;
      case NavbarItem.teams:
      emit(NavigaterootInitial(NavbarItem.teams,3));
      break;
      case NavbarItem.chat:
      emit(NavigaterootInitial(NavbarItem.chat,4));
      break;
    }
  }
}
