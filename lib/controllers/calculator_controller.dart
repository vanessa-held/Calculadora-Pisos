import 'package:calculadora_pisos/models/room_model.dart';
import 'package:calculadora_pisos/helpers/parse_helper.dart';
import '../models/floor_model.dart';
import '../models/result_model.dart';
import '../models/room_model.dart';

class CalculatorController {
  final RoomModel _room = RoomModel();
  final FloorModel _floor = FloorModel();
  double _price = 0;

  void setRoomWidth(String value) {
    _room.width = ParseHelper.toDouble(value);
  }

  void setRoomLength(String value) {
    _room.length = ParseHelper.toDouble(value);
  }

  void setFloorWidth(String value) {
    _floor.width = ParseHelper.toDouble(value);
  }

  void setFloorLength(String value) {
    _floor.length = ParseHelper.toDouble(value);
  }

  void setPrice(String value) {
    _price = ParseHelper.toDouble(value);
  }

  ResultModel calculate() {
    return ResultModel(
      piecesByWidth: (_room.width / _floor.width).ceil(),
      piecesByLength: (_room.length / _floor.length).ceil(),
      areaFloor: _floor.width * _floor.width,
      price: _price
    );
  }
}
