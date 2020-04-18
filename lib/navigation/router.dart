import 'package:navigation_tutorial/pages/initial_page.dart';
import 'package:navigation_tutorial/pages/second_page.dart';
import 'package:navigation_tutorial/pages/third_page.dart';
import 'package:sailor/sailor.dart';

class Router {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes([
      _createInitialPageRoute(),
      _createSecondPageRoute(),
      _createThirdPageRoute(),
    ]);
  }

  static SailorRoute _createInitialPageRoute() {
    return SailorRoute(
        name: '/initial', builder: (context, args, params) => InitialPage());
  }

  static SailorRoute _createSecondPageRoute() {
    return SailorRoute(
        name: '/second',
        builder: (context, args, params) => SecondPage(
              name: params.param<String>('name'),
              age: params.param<int>('age'),
            ),
        params: [
          SailorParam(name: 'name', isRequired: true),
          SailorParam(name: 'age', isRequired: true),
        ]);
  }

  static SailorRoute _createThirdPageRoute() {
    return SailorRoute(
      name: '/third',
      builder: (context, args, params) => ThirdPage(arguments: args),
    );
  }
}
