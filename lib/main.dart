import 'package:flutter/cupertino.dart';

import 'package:flutter/services.dart';
import 'package:test_interfaces_ui/routes/app_routes.dart';

void main() => runApp(const MyStyleWssWidget());

class MyStyleWssWidget extends StatelessWidget {
  const MyStyleWssWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      theme: const CupertinoThemeData(brightness: Brightness.dark),
      title: 'MyAwesomeStyles',
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
