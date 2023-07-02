import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ToggleThemeEvent>((event, emit) {
      emit(state.copyWith(state.theme == AppTheme.light ? AppTheme.dark : AppTheme.light),);
    });
  }
}
