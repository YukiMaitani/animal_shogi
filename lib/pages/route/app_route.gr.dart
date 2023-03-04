// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../draw/draw_page.dart' as _i2;
import '../game/game_page.dart' as _i4;
import '../pictures/pictures_page.dart' as _i3;
import '../setting/setting_page.dart' as _i5;
import '../tab/tab_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    TabRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabPage(),
      );
    },
    DrawRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DrawPage(),
      );
    },
    PicturesRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PicturesPage(),
      );
    },
    GameRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.GamePage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SettingPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          TabRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              PicturesRoute.name,
              path: 'pictures-page',
              parent: TabRoute.name,
            ),
            _i6.RouteConfig(
              GameRoute.name,
              path: 'game-page',
              parent: TabRoute.name,
            ),
            _i6.RouteConfig(
              SettingRoute.name,
              path: 'setting-page',
              parent: TabRoute.name,
            ),
          ],
        ),
        _i6.RouteConfig(
          DrawRoute.name,
          path: '/draw-page',
        ),
      ];
}

/// generated route for
/// [_i1.TabPage]
class TabRoute extends _i6.PageRouteInfo<void> {
  const TabRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TabRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i2.DrawPage]
class DrawRoute extends _i6.PageRouteInfo<void> {
  const DrawRoute()
      : super(
          DrawRoute.name,
          path: '/draw-page',
        );

  static const String name = 'DrawRoute';
}

/// generated route for
/// [_i3.PicturesPage]
class PicturesRoute extends _i6.PageRouteInfo<void> {
  const PicturesRoute()
      : super(
          PicturesRoute.name,
          path: 'pictures-page',
        );

  static const String name = 'PicturesRoute';
}

/// generated route for
/// [_i4.GamePage]
class GameRoute extends _i6.PageRouteInfo<void> {
  const GameRoute()
      : super(
          GameRoute.name,
          path: 'game-page',
        );

  static const String name = 'GameRoute';
}

/// generated route for
/// [_i5.SettingPage]
class SettingRoute extends _i6.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: 'setting-page',
        );

  static const String name = 'SettingRoute';
}
