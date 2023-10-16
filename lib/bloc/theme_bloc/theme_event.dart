part of 'theme_bloc.dart';

class ThemeEvent extends Equatable {
  const ThemeEvent({
    this.switchTheme = false,
  });

  final bool switchTheme;

  @override
  List<Object> get props => [];
}
