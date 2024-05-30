import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_communication/data/shared_repository.dart';
import 'package:flutter_bloc_communication/utils/di.dart';
import 'package:flutter_bloc_communication/utils/event_stram.dart';
import 'blocs/shared_repository/bloc_a/bloc_a.dart' as shared_repository;
import 'blocs/shared_repository/bloc_b/bloc_b.dart' as shared_repository;
import 'blocs/event_bus/bloc_a/bloc_a.dart' as event_bus;
import 'blocs/event_bus/bloc_b/bloc_b.dart' as event_bus;
import 'blocs/stream_controller/bloc_a/bloc_a.dart' as stream_controller;
import 'blocs/stream_controller/bloc_b/bloc_b.dart' as stream_controller;
import 'screens/screen_a.dart';
import 'screens/screen_b.dart';

void main() {
  setup(); // DI setup for event bus
  final sharedRepository = SharedRepository();
  final eventStream = EventStream();

  runApp(MyApp(sharedRepository, eventStream));
}

class MyApp extends StatelessWidget {
  final SharedRepository sharedRepository;
  final EventStream eventStream;

  const MyApp(this.sharedRepository, this.eventStream, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<shared_repository.BlocA>(
          create: (context) => shared_repository.BlocA(sharedRepository),
        ),
        BlocProvider<shared_repository.BlocB>(
          create: (context) => shared_repository.BlocB(sharedRepository),
        ),
        BlocProvider<event_bus.BlocA>(
          create: (context) => event_bus.BlocA(),
        ),
        BlocProvider<event_bus.BlocB>(
          create: (context) => event_bus.BlocB(),
        ),
        BlocProvider<stream_controller.BlocA>(
          create: (context) => stream_controller.BlocA(eventStream),
        ),
        BlocProvider<stream_controller.BlocB>(
          create: (context) => stream_controller.BlocB(eventStream),
        ),
      ],
      child: MaterialApp(
        home: ScreenA(),
        routes: {
          '/screenB': (context) => ScreenB(),
        },
      ),
    );
  }
}
