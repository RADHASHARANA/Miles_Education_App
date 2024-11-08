import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miles_education_app/gen/assets.gen.dart';
import 'package:miles_education_app/theme/theme.dart';
import 'package:miles_education_app/widget/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().themeData,
          home: MyAppPage(),
        );
      },
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: SvgPicture.asset(
          Assets.newLogo,
          height: 16.5.h,
          width: 26.w,
          color: AppColors.white,
        ),
        actions: [
          SvgPicture.asset(
            Assets.notification,
            height: 30.h,
            width: 30.w,
            color: AppColors.white,
          ),
        ],
      ),
      // bottomNavigationBar: MyNavigationWidget(),
      body: MyHomePage(),
    );
  }
}

class MyNavigationWidget extends StatefulWidget {
  const MyNavigationWidget({super.key});

  @override
  State<MyNavigationWidget> createState() => _MyNavigationWidgetState();
}

class _MyNavigationWidgetState extends State<MyNavigationWidget> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [MyHomePage(), Container(), Container()];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.appTheme.black.black,
              context.appTheme.blue.darkShadeBlue,
            ]),
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          TitleCard(name: "RS"),
          ProfileCard(),
        ]),
      ),
    );
  }
}
