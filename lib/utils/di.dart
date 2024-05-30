import 'package:get_it/get_it.dart';
import 'package:event_bus_plus/event_bus_plus.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<EventBus>(EventBus());
}
