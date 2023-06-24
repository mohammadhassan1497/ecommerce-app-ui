import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import 'theme_event.dart';
import 'theme_state.dart';

@injectable
class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  ThemeBloc() : super(AuthInitial()) {
    on<ThemeModeSwitched>((event, emit) {
      ThemeMode newThemeMode = event.themeMode;
      _isDarkMode = newThemeMode == ThemeMode.dark;
      emit(ThemeSwitchedState(themeMode: newThemeMode));
    });
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeSwitchedState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    if (state is ThemeSwitchedState) {
      return state.toJson();
    }
    return null;
  }
}
