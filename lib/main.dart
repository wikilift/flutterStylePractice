
import 'package:flutter/cupertino.dart';
import 'package:test_interfaces_ui/routes/app_routes.dart';
import 'package:test_interfaces_ui/screens/show1_screen.dart';

void main() =>
  runApp(const Show1Screen());



class MyStyleWssWidget extends StatelessWidget {
  const MyStyleWssWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    CupertinoApp(debugShowCheckedModeBanner: false, initialRoute: AppRoutes.initialRoute,
    routes: AppRoutes.getAppRoutes(),
    );
      
  }
}





  