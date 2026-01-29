import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class RequestsView extends ConsumerWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Requests')),
      body: const Center(child: Text('Requests Page')),
    );
  }
}
