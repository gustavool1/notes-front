import 'package:flutter/material.dart';
import 'package:notes/store/use_store.dart';

class HomePage extends UseAppStore {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(store.notes.teste)),
    );
  }
}
