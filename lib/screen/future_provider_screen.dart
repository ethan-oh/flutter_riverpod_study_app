import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/layout/default_layout.dart';
import 'package:state_management_riverpod_app/riverpod/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multipleFutureProvider);
    return DefaultLayout(
      title: 'FutureProviderScreen',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.when(
              data: (data) {
                return Text(data.toString());
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
