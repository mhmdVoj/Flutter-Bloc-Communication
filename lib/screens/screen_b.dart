import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_communication/blocs/shared_repository/bloc_b/bloc_b.dart'
    as shared_repository;
import 'package:flutter_bloc_communication/blocs/event_bus/bloc_b/bloc_b.dart'
    as event_bus;
import 'package:flutter_bloc_communication/blocs/stream_controller/bloc_b/bloc_b.dart'
    as stream_controller;

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context
                    .read<shared_repository.BlocB>()
                    .add(shared_repository.SubmitOrderEvent());
              },
              child: const Text('Submit Order (Shared Repository)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context
                    .read<event_bus.BlocB>()
                    .add(event_bus.SubmitOrderEvent());
              },
              child: const Text('Submit Order (Event Bus)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context
                    .read<stream_controller.BlocB>()
                    .add(stream_controller.SubmitOrderEvent());
              },
              child: const Text('Submit Order (Stream Controller)'),
            ),
          ],
        ),
      ),
    );
  }
}
