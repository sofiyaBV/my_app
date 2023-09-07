import 'package:flutter/material.dart';
import 'package:my_app/core/presentation/screens/home/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeBody(),
      ),
    );
  }
}
