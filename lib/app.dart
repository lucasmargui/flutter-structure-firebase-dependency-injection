// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:firebase_crud_1/features/sign_up/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'common/widgets/primary_button.dart';
import 'features/sign_in/sign_in_controller.dart';
import 'locator/locator.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Firebase Exemplo'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Login Firebase'),
              Tab(text: 'Cadastro Firebase'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: PrimaryButton(
                text: 'Sign in',
                onPressed: () {
                  final controller = locator.get<SignInController>();

                  controller.signIn(
                    email: "teste@teste.com",
                    password: "Lucas123456789",
                  );
                },
              ),
            ),
            Center(
              child: PrimaryButton(
                text: 'Sign Up',
                onPressed: () {
                  final controller = locator.get<SignUpController>();

                  controller.signUp(
                    name: 'Lucas Martins',
                    email: "teste@teste.com",
                    password: "Lucas123456789",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
