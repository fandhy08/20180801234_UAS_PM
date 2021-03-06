import 'dart:async';
import 'package:translator/translator.dart';

class TranslatorBloc {
  String _fromLang;
  String _toLang;
  var _google;
  TranslatorBloc() {
    _fromLang = "en";
    _toLang = "id";
    _google = "";
  }
  final _controllerText = StreamController<String>();
  Stream<String> get streamTranslator => _controllerText.stream;

  final _controllerFromLang = StreamController<String>();
  Stream<String> get streamFromLang => _controllerFromLang.stream;

  final _controllerToLang = StreamController<String>();
  Stream<String> get streamToLang => _controllerToLang.stream;

  void translator(String text) async {
    if (text == "Menerjemahkan...") {
      _controllerText.add(text);
    } else if (text == "" || text.isEmpty || text.length == 0) {
      _controllerText.add("");
    } else {
      final translator = GoogleTranslator();
      if (text != null) {
        _google = await translator.translate(text,
            from: '$_fromLang', to: '$_toLang');
        if (_google != null) {
          print("$_google");
          _controllerText.add(_google);
        }
      }
    }
  }

  void fromLang(String fromLang) {
    _fromLang = fromLang;
    _controllerFromLang.add(fromLang);
  }

  void toLang(String toLang) {
    _toLang = toLang;
    _controllerToLang.add(toLang);
  }
}