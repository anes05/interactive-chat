// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:chatbot/screens/chat_page/chat_page.dart' as _i1;
import 'package:chatbot/screens/thanks_page/thanks_page.dart' as _i2;
import 'package:chatbot/screens/welcome_page/WelcomePage.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ChatRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChatPage(),
      );
    },
    ThanksRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ThanksPage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChatPage]
class ChatRoute extends _i4.PageRouteInfo<void> {
  const ChatRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ThanksPage]
class ThanksRoute extends _i4.PageRouteInfo<void> {
  const ThanksRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ThanksRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThanksRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.WelcomePage]
class WelcomeRoute extends _i4.PageRouteInfo<void> {
  const WelcomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
