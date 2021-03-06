import 'package:flutter/widgets.dart';

@immutable
class Message {
  const Message({
    @required this.locale,
    @required this.ok,
    @required this.cancel,
    @required this.home,
    @required this.detail,
  });

  factory Message.of(Locale locale) {
    switch (locale.languageCode) {
      case 'ja':
        return Message._ja();
      case 'en':
      default:
        return Message._en();
    }
  }

  factory Message._en() {
    return const Message(
      locale: Locale('en', ''),
      ok: 'OK',
      cancel: 'CANCEL',
      home: 'Home',
      detail: 'Detail',
    );
  }

  factory Message._ja() {
    return const Message(
      locale: Locale('ja', ''),
      ok: 'OK',
      cancel: 'CANCEL',
      home: 'ホーム',
      detail: '詳細',
    );
  }

  final Locale locale;
  final String ok;
  final String cancel;
  final String home;
  final String detail;
}
