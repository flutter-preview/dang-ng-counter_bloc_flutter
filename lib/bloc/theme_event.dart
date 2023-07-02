part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ToggleThemeEvent extends ThemeEvent{}
