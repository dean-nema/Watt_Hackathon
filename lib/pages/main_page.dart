import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watt/components/button_navigation_items.dart';
import 'package:watt/config/app_icons.dart';
import 'package:watt/pages/add.dart';
import 'package:watt/pages/home.dart';
import 'package:watt/pages/notfications.dart';
import 'package:watt/pages/profile.dart';
import 'package:watt/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,//this takes up spaces without widget being used to extend the widget behind to form a floating kind of widget
        body: pages[currentIndex.index],
        bottomNavigationBar: MyButtonNavigation(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }

  final pages = [
    HomePage(),
    Center(child: Text("Favorite")),
    AddPage(),
    NotfPage(messageText: "Dean Is Amazing",),
    ProfilePage(),
  ];
}

enum Menus { home, favourites, add, messages, profile }

class MyButtonNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyButtonNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(children: [
                //Expand is used to eqaully divide things within a container or widget
                Expanded(
                    child: ButtonNavigationItem(
                      onPressed: () => onTap(Menus.home), 
                      icon: AppIcons.home, 
                      current: currentIndex, 
                      page_name: Menus.home)
                ),
                Expanded(
                    child:ButtonNavigationItem(onPressed: ()=> onTap(Menus.favourites), 
                    icon: AppIcons.favourites, 
                    current: currentIndex, 
                    page_name: Menus.favourites)
                    , ),
                Spacer(),
                Expanded(
                    child: IconButton(
                  onPressed: () => onTap(Menus.messages),
                  icon: SvgPicture.asset(AppIcons.messages,
                    colorFilter: 
                   ColorFilter.mode(
                    currentIndex == Menus.messages
                    ? Colors.black 
                    : Colors.black.withOpacity(0.3), 
                    BlendMode.srcIn)),
                )),
                Expanded(
                    child: IconButton(
                  onPressed: () => onTap(Menus.profile),
                  icon: SvgPicture.asset(AppIcons.profile,
                     colorFilter: 
                   ColorFilter.mode(
                    currentIndex == Menus.profile
                    ? Colors.black 
                    : Colors.black.withOpacity(0.3), 
                    BlendMode.srcIn)),
                ))
              ]),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                // padding: const EdgeInsets.all2(16),
                decoration: BoxDecoration(
                    color: AppColors.primary, shape: BoxShape.circle),
                child:  SvgPicture.asset(AppIcons.addPost,
                ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
