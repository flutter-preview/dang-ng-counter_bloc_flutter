part of 'theme_bloc.dart';

enum AppTheme { light, dark }

@immutable
class ThemeState extends Equatable {
  final AppTheme theme;

  const ThemeState({required this.theme});

  factory ThemeState.initial() {
    return const ThemeState(theme: AppTheme.light);
  }

  @override
  List<Object?> get props => [theme];

  ThemeState copyWith(AppTheme? theme) {
    return ThemeState(theme: theme ?? this.theme);
  }
}
