import 'package:flutter_riverpod/flutter_riverpod.dart';

final multipleStreamProvider = StreamProvider<List<int>>(
  (ref) async* {
    for (int i = 1; i < 11; i++) {
      await Future.delayed(Duration(seconds: 1));
      if (i == 7) {
        throw Exception('에러!!');
      }
      yield List.generate(
        3,
        (index) => (index + 1) * i,
      );
    }
  },
);
