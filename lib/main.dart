import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: ((context, sizingInformation) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 150,
                color: Colors.blue,
                margin: const EdgeInsets.all(50),
                child:
                    ResponsiveBuilder(builder: ((context, sizingInformation) {
                  return sizingInformation.deviceScreenType ==
                          DeviceScreenType.tablet
                      ? Text(sizingInformation.deviceScreenType.toString())
                      : Text(sizingInformation.toString());
                })),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
