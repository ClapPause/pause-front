import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pause/controllers/user_controller.dart';
import 'package:pause/screens/home/home_screen.dart';
import 'package:pause/screens/sign/login_screen.dart';
import 'package:provider/provider.dart';
import '../../constants/constants_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  Widget getScreen() {
    switch (_currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const Center(child: Text('page2'));
      case 2:
        return const Center(child: Text('page3'));
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserController>(builder: (context, controller, child) {
      if (controller.user == null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      }
      return Scaffold(
        backgroundColor: kWhiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('메인화면, ${controller.user!.name}'),
          ],
        ),
      );
    });
  }

  Widget kBottomNavigationBarItem(
      {required String activeImage,
      required String inactiveImage,
      required int index}) {
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => _currentIndex = index),
        child: Container(
          color: kWhiteColor,
          child: SvgPicture.asset(
            _currentIndex == index ? activeImage : inactiveImage,
          ),
        ),
      ),
    );
  }
}
