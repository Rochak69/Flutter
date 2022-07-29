import 'package:flutter/material.dart';
import './theme.dart';
import 'package:flutter_application_1/screens/screens.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget{

  static const name = '3';
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const IconData notifications =
        IconData(0xe44f, fontFamily: 'MaterialIcons');
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return AppBar(leading:GestureDetector(
        onTap: () {
      Navigator.pushNamed(context, SignInScreen.name);
    },
    child: const CircleAvatar(
    backgroundImage: NetworkImage(
    "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg"),
    ),
    ), leadingWidth: 45, title:GestureDetector(
    onTap: () {
    Navigator.pushNamed(context, SignInScreen.name);
    },
    child: Image(
    width: width * 0.5,
    height: height * 0.065,
    image: const NetworkImage(
    "https://s.mihnati.com/company_logos/06/79680115395868.jpg")),
    ),backgroundColor: kColorAccent,
    actions:<Widget>[GestureDetector(
    onTap: () {
    Navigator.pushNamed(context, SignInScreen.name);
    },
    child: const Icon(
    notifications,
    size: 30,
    color: Colors.black,
    ),
    )]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
