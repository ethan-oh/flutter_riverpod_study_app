import 'package:flutter/material.dart';
import 'package:state_management_riverpod_app/layout/default_layout.dart';
import 'package:state_management_riverpod_app/screen/future_provider_screen.dart';
import 'package:state_management_riverpod_app/screen/state_notifier_provider_screen.dart';
import 'package:state_management_riverpod_app/screen/state_provider_screen.dart';
import 'package:state_management_riverpod_app/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Riverpod',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StateProviderScreen(),
                ),
              );
            },
            child: const Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StateNotifierProviderScreen(),
                ),
              );
            },
            child: const Text('StateNotifierProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FutureProviderScreen(),
                ),
              );
            },
            child: const Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StreamProviderScreen(),
                ),
              );
            },
            child: const Text('StreamProviderScreen'),
          ),
        ],
      ),
    );
  }
}
