import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/layout/default_layout.dart';
import 'package:state_management_riverpod_app/riverpod/state_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shoppingListProvider);

    return DefaultLayout(
      title: 'StateNotifierProviderScreen',
      body: ListView(
        children: state
            .map(
              (e) => Card(
                  child: CheckboxListTile(
                title: Text(e.name),
                subtitle: Text('수량: ${e.quantity}'),
                value: e.hasBought,
                onChanged: (value) {
                  ref
                      .watch(shoppingListProvider.notifier)
                      .toggleHasBought(name: e.name);
                },
              )),
            )
            .toList(),
      ),
    );
  }
}
