import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_project/Dashboard/dashboard_screen.dart';
import 'package:marlo_project/Transactions/balance_screen.dart';
import 'package:marlo_project/Transactions/transaction_screen.dart';
import 'package:marlo_project/logic/cubit/nav_bar_item.dart';
import 'package:marlo_project/logic/cubit/navigateroot_cubit.dart';
import 'package:marlo_project/presentation/loan_screen.dart';
import 'package:marlo_project/presentation/screens/chat_scree.dart';
import 'package:marlo_project/presentation/screens/contract_screen.dart';
import 'package:marlo_project/presentation/screens/home_screen.dart';
import 'package:marlo_project/presentation/screens/teams_screen.dart';


class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigaterootCubit, NavigaterootInitial>(
        builder: (context, state) {
          return ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), ),
            child:
          BottomNavigationBar(  
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10,
             unselectedFontSize: 10,
           backgroundColor: Colors.white,
            currentIndex: state.index,
            showUnselectedLabels: true,
             unselectedItemColor: Color.fromRGBO(118, 128, 138, 1),
          selectedItemColor: Color.fromRGBO(12, 171, 223, 1),
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                AssetImage("assets/images/bottomhome.png"),
                size: 20, 
                ),
                activeIcon: ImageIcon(AssetImage("assets/images/bottomhome.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                AssetImage("assets/images/bottomloan.png"),
                size: 20, 
                ),
                  activeIcon: ImageIcon(AssetImage("assets/images/bottomloan.png")),
                label: 'loan',
              ),
              BottomNavigationBarItem(
               icon: ImageIcon(
                AssetImage("assets/images/bottomcontract.png"),
                size: 20, 
                ),
                 activeIcon: ImageIcon(AssetImage("assets/images/bottomcontract.png")),
                label: 'contract',
              ),
               BottomNavigationBarItem(
               icon: ImageIcon(
                AssetImage("assets/images/bottomteams.png"),
                size: 20, 
                ),
                 activeIcon: ImageIcon(AssetImage("assets/images/bottomteams.png")),
                label: 'teams',
              ), BottomNavigationBarItem(
               icon: ImageIcon(
                AssetImage("assets/images/bottomchat.png"),
                size: 20, 
                ),
                 activeIcon: ImageIcon(AssetImage("assets/images/bottomchat.png")),
                label: 'chats',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigaterootCubit>(context)
                    .getNavBarItem(NavbarItem.home);
              } else if (index == 1) {
                BlocProvider.of<NavigaterootCubit>(context)
                    .getNavBarItem(NavbarItem.loan);
              } else if (index == 2) {
                BlocProvider.of<NavigaterootCubit>(context)
                    .getNavBarItem(NavbarItem.contract);
              }else if (index == 3) {
                BlocProvider.of<NavigaterootCubit>(context)
                    .getNavBarItem(NavbarItem.teams);
              }else if (index == 4) {
                BlocProvider.of<NavigaterootCubit>(context)
                    .getNavBarItem(NavbarItem.chat);
              }
            },
          ),
          );
        },
      ),
      body: BlocBuilder<NavigaterootCubit, NavigaterootInitial>(
          builder: (context, state) {
        if (state.navbarItem == NavbarItem.home) {
          return DsahBoardScreenScreen();
        } else if (state.navbarItem == NavbarItem.loan) {
          return BalanceScreen();
        } else if (state.navbarItem == NavbarItem.contract) {
         // return TransferScreen();
        }else if (state.navbarItem == NavbarItem.teams) {
          return TeamScreen();
        }else if (state.navbarItem == NavbarItem.chat) {
          return ChatScreen();
        }
        return Container();
      }),
    );
  }
}