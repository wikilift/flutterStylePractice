import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CoolDesignScreen extends StatelessWidget {
  const CoolDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          //background
          Background(),
          //titles
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomNavigationBottomBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //titles
          PageTitle(),
          //card table
          CardTable()
        ],
      ),
    );
  }
}
