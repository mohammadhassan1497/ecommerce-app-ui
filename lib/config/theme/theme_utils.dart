import 'package:flutter/material.dart';

import '../../injectable_config.dart';
import '../config.dart';

ThemeData theme() =>
    getIt<ThemeBloc>().isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;
TextTheme textTheme() => getIt<ThemeBloc>().isDarkMode
    ? AppTheme.darkTheme.textTheme
    : AppTheme.lightTheme.textTheme;
