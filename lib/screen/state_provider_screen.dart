import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_riverpod_app/layout/default_layout.dart';
import 'package:state_management_riverpod_app/riverpod/state_provider.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch : 해당 프로바이더를 관찰하다가 변경이 감지되면 빌드를 새로 한다.
    final number = ref.watch(numberProvider);
    return DefaultLayout(
      title: 'StateProviderScreen',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(numberProvider.notifier).update((state) => state + 1);
              },
              child: Text('up'),
            ),
            ElevatedButton(
              onPressed: () {
                --ref.read(numberProvider.notifier).state;
              },
              child: Text('down'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => _NextScreen(),
                    ),
                  );
                },
                child: Text('next screen'))
          ],
        ),
      ),
    );
  }
}

class _NextScreen extends ConsumerWidget {
  const _NextScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch : 해당 프로바이더를 관찰하다가 변경이 감지되면 빌드를 새로 한다.
    final number = ref.watch(numberProvider);
    return DefaultLayout(
      title: 'StateProviderScreen',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(numberProvider.notifier).update(
                        (state) => state + 1,
                      );
                },
                child: Text('up')),
          ],
        ),
      ),
    );
  }
}
