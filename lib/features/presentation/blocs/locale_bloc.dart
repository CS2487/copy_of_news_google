import 'package:copy_of_news_google/core/imports/imports.dart';

abstract class LocaleEvent {}

class LoadLocale extends LocaleEvent {}

class ChangeLocale extends LocaleEvent {
  final Locale locale;
  ChangeLocale(this.locale);
}

class LocaleState {
  final Locale locale;
  const LocaleState(this.locale);
}

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final SharedPreferences prefs;

  LocaleBloc(this.prefs) : super(const LocaleState(Locale('en'))) {
    on<LoadLocale>((event, emit) {
      final savedLocale = prefs.getString('locale') ?? 'en';
      emit(LocaleState(Locale(savedLocale)));
    });

    on<ChangeLocale>((event, emit) {
      if (!['en', 'ar'].contains(event.locale.languageCode)) return;
      prefs.setString('locale', event.locale.languageCode);
      emit(LocaleState(event.locale));
    });
  }
}
