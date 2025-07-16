import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:chrono/chrono.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/locale.dart' as intl;
import 'package:supernova/supernova.dart';

extension L10nStringSupernova on L10nString {
  String getForContext(BuildContext context) =>
      getValue(context.locale.asIntlLocale);
}

typedef SupernovaL10nStringGetter = String Function(
  SupernovaLocalizations l10n,
);

extension on Locale {
  intl.Locale get asIntlLocale {
    return intl.Locale.fromSubtags(
      languageCode: languageCode,
      countryCode: countryCode,
      scriptCode: scriptCode,
    );
  }
}

class SupernovaLocalizationsDelegate
    extends LocalizationsDelegate<SupernovaLocalizations> {
  const SupernovaLocalizationsDelegate();

  static const delegates = [
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    SupernovaLocalizationsDelegate(),
  ];

  @override
  bool isSupported(Locale locale) => _getLocalization(locale) != null;

  @override
  Future<SupernovaLocalizations> load(Locale locale) {
    assert(isSupported(locale));
    Intl.defaultLocale = locale.toLanguageTag();
    return SynchronousFuture(_getLocalization(locale)!);
  }

  @override
  bool shouldReload(SupernovaLocalizationsDelegate old) => false;

  SupernovaLocalizations? _getLocalization(Locale locale) {
    return switch (locale.languageCode) {
      'de' => const SupernovaLocalizationDe(),
      'en' => const SupernovaLocalizationEn(),
      _ => null
    };
  }
}

extension BuildContextSupernovaLocalizations on BuildContext {
  SupernovaLocalizations get supernovaL10n =>
      Localizations.of(this, SupernovaLocalizations)!;
}

@immutable
abstract class SupernovaLocalizations {
  const SupernovaLocalizations();

  // All messages are ordered alphabetically.

  String get actionCancel;
  String get actionSave;
  String get actionSaveSuccessful;

  String get amount;

  String get choose;
  String get clear;
  String get close;

  String get comingSoonPage;

  String get companyDeleted;
  String get companyTitle;

  String get done;

  String get discardChanges;
  String get discardChangesActionDiscard;
  String get discardChangesActionKeepEditing;
  String get discardChangesMessage;

  String get errorOfflineTryAgain;
  String errorUnknown({String? message, bool shouldTryAgain = true});
  String get errorUnknownShort => 'X';

  String get formFieldLabelRequiredExplanation;
  String get formFieldLabelRequiredSemanticsLabel;
  String get formFieldTextDefaultHint;
  String get formFieldTextEmailAddress;
  String get formFieldTextEmailAddressErrorEmpty;
  String get formFieldTextEmailAddressErrorInvalid;
  String get formFieldTextPassword;
  String get formFieldTextPasswordErrorEmpty;
  String formFieldTextPasswordErrorTooShort(int minLength);

  String get inputUrlHint;
  String get inputUrlErrorNotHttps;
  String get inputUrlErrorInvalid;

  String joinWithConjunction(List<String> items);
  String joinInfos(Iterable<String> items) => items.join(' · ');
  String joinKeyValue(String key, String value) => '$key: $value';

  String get legalDisclosure;
  String get legalLicenses;
  String get legalPrivacyPolicy;
  String get legalTermsOfUse;

  String get loading;
  String get loadingShort => '…';

  String month(Month month);
  String monthRange(Month? begin, Month? end, {bool isEndExpected = false});

  String get notFoundShort => '—';

  String get pageNotFound;
  String pageNotFoundMessage(Uri uri);

  String range(String start, String end) => '$start – $end';

  String get settingsRestartRequired;
  String get settingsVersion;

  String get stepNext;
  String get stepPrevious;

  String get unknown;
}

class SupernovaLocalizationDe extends SupernovaLocalizations {
  const SupernovaLocalizationDe();

  @override
  String get actionCancel => 'Abbrechen';
  @override
  String get actionSave => 'Speichern';
  @override
  String get actionSaveSuccessful {
    return switch (addressingFormality) {
      AddressingFormality.formal =>
        'Ihre Änderungen wurden erfolgreich gespeichert!',
      AddressingFormality.informal =>
        'Deine Änderungen wurden erfolgreich gespeichert!'
    };
  }

  @override
  String get amount => 'Anzahl';

  @override
  String get choose => 'Auswählen';
  @override
  String get clear => 'Entfernen';
  @override
  String get close => 'Schließen';

  @override
  String get comingSoonPage => 'Demnächst verfügbar!';

  @override
  String get companyDeleted => 'Dieses Unternehmen wurde gelöscht.';
  @override
  String get companyTitle => 'Unternehmen';

  @override
  String get done => 'Fertig';

  @override
  String get discardChanges => 'Änderungen verwerfen?';
  @override
  String get discardChangesActionDiscard => 'Verwerfen';
  @override
  String get discardChangesActionKeepEditing => 'Weiter bearbeiten';
  @override
  String get discardChangesMessage =>
      'Deine Änderungen wurden noch nicht gespeichert.';

  @override
  String get errorOfflineTryAgain {
    return switch (addressingFormality) {
      AddressingFormality.formal =>
        'Sie scheinen offline zu sein. Bitte stellen Sie sicher, dasss '
            'Sie mit dem Internet verbunden sind, und versuchen es dann '
            'erneut.',
      AddressingFormality.informal =>
        'Du scheinst offline zu sein. Bitte stell sicher, dass du mit '
            'dem Internet verbunden bist, und versuche es dann erneut.'
    };
  }

  @override
  String errorUnknown({String? message, bool shouldTryAgain = true}) {
    final messageString = message != null ? ':\n$message' : '.';
    return [
      'Es ist ein unbekannter Fehler aufgetreten$messageString',
      if (shouldTryAgain)
        switch (addressingFormality) {
          AddressingFormality.formal => 'Bitte versuchen Sie es erneut.',
          AddressingFormality.informal => 'Bitte versuche es erneut.'
        },
    ].join(message != null ? '\n' : ' ');
  }

  @override
  String get formFieldLabelRequiredExplanation => 'Pflichtfelder';
  @override
  String get formFieldLabelRequiredSemanticsLabel => 'Pflichtfeld';
  @override
  String get formFieldTextDefaultHint => 'Hier eingeben';
  @override
  String get formFieldTextEmailAddress => 'E-Mail-Adresse';
  @override
  String get formFieldTextEmailAddressErrorEmpty {
    return switch (addressingFormality) {
      AddressingFormality.formal => 'Bitte geben Sie Ihre E-Mail-Adresse ein.',
      AddressingFormality.informal => 'Bitte gib deine E-Mail-Adresse ein.'
    };
  }

  @override
  String get formFieldTextEmailAddressErrorInvalid {
    return switch (addressingFormality) {
      AddressingFormality.formal =>
        'Bitte geben Sie eine gültige E-Mail-Adresse ein.',
      AddressingFormality.informal =>
        'Bitte gib eine gültige E-Mail-Adresse ein.'
    };
  }

  @override
  String get formFieldTextPassword => 'Passwort';
  @override
  String get formFieldTextPasswordErrorEmpty {
    return switch (addressingFormality) {
      AddressingFormality.formal => 'Bitte geben Sie Ihr Passwort ein.',
      AddressingFormality.informal => 'Bitte gib dein Passwort ein.'
    };
  }

  @override
  String formFieldTextPasswordErrorTooShort(int minLength) =>
      'Das Passwort muss aus mindestens $minLength Zeichen bestehen.';

  @override
  String get inputUrlHint => 'URL eingeben';
  @override
  String get inputUrlErrorInvalid {
    return switch (addressingFormality) {
      AddressingFormality.formal => 'Bitte geben Sie eine gültige URL ein.',
      AddressingFormality.informal => 'Bitte gib eine gültige URL ein.'
    };
  }

  @override
  String get inputUrlErrorNotHttps =>
      'Die URL muss mit „https://“ beginnen oder darf kein „://“ beinhalten.';

  @override
  String joinWithConjunction(List<String> items) {
    assert(items.isNotEmpty);
    return items.singleOrNull ??
        '${items.dropLast(1).join(', ')} und ${items.last}';
  }

  @override
  String get legalDisclosure => 'Impressum';
  @override
  String get legalLicenses => 'Lizenzen';
  @override
  String get legalPrivacyPolicy => 'Datenschutzerklärung';
  @override
  String get legalTermsOfUse => 'Nutzungsbedingungen';

  @override
  String get loading => 'Lädt …';

  @override
  String month(Month month) {
    return switch (month) {
      Month.january => 'Januar',
      Month.february => 'Februar',
      Month.march => 'März',
      Month.april => 'April',
      Month.may => 'Mai',
      Month.june => 'Juni',
      Month.july => 'Juli',
      Month.august => 'August',
      Month.september => 'September',
      Month.october => 'Oktober',
      Month.november => 'November',
      Month.december => 'Dezember',
    };
  }

  @override
  String monthRange(Month? begin, Month? end, {bool isEndExpected = false}) {
    final until = isEndExpected ? 'bis vsl.' : 'bis';
    if (begin != null) {
      return end != null
          ? '${month(begin)} $until ${month(end)}'
          : 'ab ${month(begin)}';
    } else {
      return end != null ? '$until ${month(end)}' : 'Irgendwann';
    }
  }

  @override
  String get pageNotFound => 'Seite nicht gefunden';
  @override
  String pageNotFoundMessage(Uri uri) =>
      '404 – Wir konnten die von dir aufgerufene Seite nicht finden:\n$uri';

  @override
  String get settingsRestartRequired =>
      'Diese Änderung wird erst nach einem Neustart der App aktiv.';

  @override
  String get settingsVersion => 'Version';

  @override
  String get stepNext => 'Weiter';
  @override
  String get stepPrevious => 'Zurück';

  @override
  String get unknown => 'unbekannt';
}

class SupernovaLocalizationEn extends SupernovaLocalizations {
  const SupernovaLocalizationEn();

  @override
  String get actionCancel => 'Cancel';
  @override
  String get actionSave => 'Save';
  @override
  String get actionSaveSuccessful =>
      'Your changes have been saved successfully!';

  @override
  String get amount => 'Amount';

  @override
  String get choose => 'Choose';
  @override
  String get clear => 'Clear';
  @override
  String get close => 'Close';

  @override
  String get comingSoonPage => 'Coming Soon!';

  @override
  String get companyDeleted => 'This company was deleted.';
  @override
  String get companyTitle => 'Company';

  @override
  String get done => 'Done';

  @override
  String get discardChanges => 'Discard changes?';
  @override
  String get discardChangesActionDiscard => 'Discard';
  @override
  String get discardChangesActionKeepEditing => 'Keep editing';
  @override
  String get discardChangesMessage => 'Your changes have not been saved.';

  @override
  String get errorOfflineTryAgain {
    return 'You appear to be offline. Please make sure you have an internet '
        'connection and then try again.';
  }

  @override
  String errorUnknown({String? message, bool shouldTryAgain = true}) {
    final messageString = message != null ? ':\n$message' : '.';
    return [
      'An unknown error occured$messageString',
      if (shouldTryAgain) 'Please try again.',
    ].join(message != null ? '\n' : ' ');
  }

  @override
  String get formFieldLabelRequiredExplanation => 'Required fields';
  @override
  String get formFieldLabelRequiredSemanticsLabel => 'Required field';
  @override
  String get formFieldTextDefaultHint => 'Write here';
  @override
  String get formFieldTextEmailAddress => 'Email Address';
  @override
  String get formFieldTextEmailAddressErrorEmpty =>
      'Please enter your email address.';
  @override
  String get formFieldTextEmailAddressErrorInvalid =>
      'Please enter a valid email address.';
  @override
  String get formFieldTextPassword => 'Password';
  @override
  String get formFieldTextPasswordErrorEmpty => 'Please enter your password.';
  @override
  String formFieldTextPasswordErrorTooShort(int minLength) =>
      'The passwort must be at least $minLength characters long.';

  @override
  String get inputUrlHint => 'Enter a URL';
  @override
  String get inputUrlErrorInvalid => 'Please enter a valid URL.';
  @override
  String get inputUrlErrorNotHttps =>
      'The URL must start with “https://” or may not contain “://”.';

  @override
  String joinWithConjunction(List<String> items) {
    assert(items.isNotEmpty);
    return switch (items.length) {
      1 => items.first,
      2 => '${items.first} and ${items.last}',
      _ => '${items.dropLast(1).join(', ')}, and ${items.last}'
    };
  }

  @override
  String get legalDisclosure => 'Legal disclosure';
  @override
  String get legalLicenses => 'Licenses';
  @override
  String get legalPrivacyPolicy => 'Privacy policy';
  @override
  String get legalTermsOfUse => 'Terms of use';

  @override
  String get loading => 'Loading…';

  @override
  String month(Month month) {
    return switch (month) {
      Month.january => 'January',
      Month.february => 'February',
      Month.march => 'March',
      Month.april => 'April',
      Month.may => 'May',
      Month.june => 'June',
      Month.july => 'July',
      Month.august => 'August',
      Month.september => 'September',
      Month.october => 'October',
      Month.november => 'November',
      Month.december => 'December',
    };
  }

  @override
  String monthRange(Month? begin, Month? end, {bool isEndExpected = false}) {
    final untilSuffix = isEndExpected ? ' (expected)' : '';
    if (begin != null) {
      return end != null
          ? '${month(begin)} until ${month(end)}$untilSuffix'
          : 'since ${month(begin)}';
    } else {
      return end != null ? 'until ${month(end)}$untilSuffix' : 'Sometime';
    }
  }

  @override
  String get pageNotFound => 'Page not found';
  @override
  String pageNotFoundMessage(Uri uri) =>
      "404 – We couldn't find the page you were looking for:\n$uri";

  @override
  String get settingsRestartRequired =>
      'This change will only take effect after a restart of the app.';

  @override
  String get settingsVersion => 'Version';

  @override
  String get stepNext => 'Next';
  @override
  String get stepPrevious => 'Previous';

  @override
  String get unknown => 'unknown';
}

/// Whether to address the user in a formal or informal way.
enum AddressingFormality { formal, informal }

late final AddressingFormality addressingFormality;
