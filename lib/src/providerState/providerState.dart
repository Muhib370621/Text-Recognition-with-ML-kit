import 'package:flutter/material.dart';
import 'package:learning_input_image/learning_input_image.dart';
import 'package:learning_text_recognition/learning_text_recognition.dart';


class TextRecognitionState extends ChangeNotifier {
  InputImage? _image;
  RecognizedText? _data;
  bool _isProcessing = false;

  InputImage? get image => _image;
  RecognizedText? get data => _data;
  String get text => _data!.text;
  bool get isNotProcessing => !_isProcessing;
  bool get isNotEmpty => _data != null && text.isNotEmpty;

  void startProcessing() {
    _isProcessing = true;
    notifyListeners();
  }

  void stopProcessing() {
    _isProcessing = false;
    notifyListeners();
  }

  set image(InputImage? image) {
    _image = image;
    notifyListeners();
  }

  set data(RecognizedText? data) {
    _data = data;
    notifyListeners();
  }
}