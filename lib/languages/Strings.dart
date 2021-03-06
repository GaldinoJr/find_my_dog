import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Strings {
  Strings(this.locale);

  final Locale locale;

  static Strings of(BuildContext context) {
    return Strings(Locale('br'));
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'br': {
      'title': 'Find my dog',
      'email': 'Email',
      'password':'Senha',
      'login':'Login',
      'signUp':'Sign Up',
      'appName':'Find my pet'
    }
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }

  String get email {
    return _localizedValues[locale.languageCode]['email'];
  }

  String get password {
    return _localizedValues[locale.languageCode]['password'];
  }

  String get login {
    return _localizedValues[locale.languageCode]['login'];
  }

  String get signUp {
    return _localizedValues[locale.languageCode]['signUp'];
  }

  String get appName {
    return _localizedValues[locale.languageCode]['appName'];
  }
}