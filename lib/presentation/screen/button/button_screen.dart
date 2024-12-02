import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text("Elevated Button")),
              const ElevatedButton(
                  onPressed: null, child: Text("Elevated Button")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarms_rounded),
                  label: const Text("Elevated Icon")),
              FilledButton(
                  onPressed: () {}, child: const Text("Filled Button")),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_balance_outlined),
                  label: const Text(" Filled Icon")),
              OutlinedButton(
                  onPressed: () {}, child: const Text("Outlined Button")),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle_outline),
                  label: const Text("Outlined Icon")),
              TextButton(onPressed: () {}, child: const Text("Text Button")),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_rounded),
                  label: const Text("Text Button")),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.access_alarm)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(color.primary)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
