import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends ThemeState {}

class ThemeSwitchedState extends ThemeState {
  final ThemeMode themeMode;

  const ThemeSwitchedState({required this.themeMode});

  const ThemeSwitchedState.initial() : this(themeMode: ThemeMode.system);

  ThemeSwitchedState.fromJson(Map<String, dynamic> json)
      : themeMode = ThemeMode.values.byName(json['themeMode']);

  Map<String, dynamic>? toJson() {
    return {'themeMode': themeMode.name};
  }

  @override
  List<Object> get props => [themeMode];
}
