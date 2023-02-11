import 'package:flutter/material.dart';

class DesktopMainView
    extends StatefulWidget
{
  @override
  State<DesktopMainView> createState() => _DesktopMainViewState();
}

class _DesktopMainViewState
    extends State<DesktopMainView>
{
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text("Hello World")),
    );
  }
}