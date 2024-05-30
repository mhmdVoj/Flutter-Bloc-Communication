import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_communication/blocs/shared_repository/bloc_a/bloc_a.dart'
    as shared_repository;
import 'package:flutter_bloc_communication/blocs/event_bus/bloc_a/bloc_a.dart'
    as event_bus;
import 'package:flutter_bloc_communication/blocs/stream_controller/bloc_a/bloc_a.dart'
    as stream_controller;

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen A')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlocBuilder<shared_repository.BlocA,
                      shared_repository.BlocAState>(
                    builder: (context, state) {
                      return Text(
                          (state as shared_repository.TextUpdatedState).text);
                    },
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<event_bus.BlocA, event_bus.BlocAState>(
                    builder: (context, state) {
                      return Text((state as event_bus.TextUpdatedState).text);
                    },
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<stream_controller.BlocA,
                      stream_controller.BlocAState>(
                    builder: (context, state) {
                      return Text(
                          (state as stream_controller.TextUpdatedState).text);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screenB');
              },
              child: const Text('Go to Screen B'),
            ),
          ),
        ],
      ),
    );
  }
}
