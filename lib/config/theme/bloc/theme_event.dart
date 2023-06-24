import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeModeSwitched extends ThemeEvent {
  const ThemeModeSwitched({required this.themeMode});

  final ThemeMode themeMode;

  @override
  List<Object> get props => [themeMode];
}
