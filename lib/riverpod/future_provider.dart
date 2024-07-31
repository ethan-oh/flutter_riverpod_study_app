import 'package:flutter_riverpod/flutter_riverpod.dart';

final multipleFutureProvider = FutureProvider<List<int>>(
  (ref) async => Future.delayed(
    Duration(seconds: 1),
    () {
      // throw (Exception('에러입니다.'));
      return [1, 2, 3, 4, 5];
    },
  ),
);
