class TradeMachine {
  final String serialNumber;
  final bool isWorking;
  final String location;
  final String typeOfBus;
  final String signalLevel;
  final String id;
  final String modem;
  final String machineType;

  TradeMachine({
    required this.isWorking,
    required this.id,
    required this.location,
    required this.modem,
    required this.signalLevel,
    required this.serialNumber,
    required this.typeOfBus,
    required this.machineType,
  });
}
