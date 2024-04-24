// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent {
  to_amber,
  to_light_blue,
}

class ColorBloc{
  Color _color = Colors.amber;

  final _eventStreamController = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _eventStreamController.sink;
  Stream<ColorEvent> get eventStream => _eventStreamController.stream;
  
  final _stateStreamController = StreamController<Color>.broadcast();
  StreamSink<Color> get _stateSink => _stateStreamController.sink;
  Stream<Color> get stateStream => _stateStreamController.stream;


  ColorBloc(){
    _eventStreamController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(ColorEvent colorEvent){
    if(colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }

    _stateSink.add(_color);
  }

  void dispose(){
    _stateStreamController.close();
    _eventStreamController.close();
  }
}