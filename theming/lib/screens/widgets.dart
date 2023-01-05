import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return const ElevatedButtons();
  }
}

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text("Elevated Buttons"),
          trailing: Icon(Icons.info_outline),
        ),
        IntrinsicWidth(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: const Text("button"),
                onPressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomWidgetTile extends StatelessWidget {
  final Widget title;
  final Widget subTitle;
  final bool id;
  final EdgeInsetsGeometry? padding;

  const CustomWidgetTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.id,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: title,
          subtitle: subTitle,
          trailing: const Icon(Icons.info_outline),
        ),
      ],
    );
  }
}
