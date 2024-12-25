import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  // ohh shit sorry about this
  final void Function(String) onButtonPressed;
  const ButtonGrid({super.key, required this.onButtonPressed});

  // creating the buttons individually

  Widget buildButton(
      {required BuildContext context, required String text, Color? color}) {
    color ??= Theme.of(context).colorScheme.surface;
    return ElevatedButton(
        onPressed: () => onButtonPressed(text),

        // styling the buttons

        style: ElevatedButton.styleFrom(elevation: 0, backgroundColor: color),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // using gridview count for the structure of the buttons
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        buildButton(
            context: context,
            text: '(',
            color: Theme.of(context).colorScheme.primary),
        buildButton(
            context: context,
            text: ')',
            color: Theme.of(context).colorScheme.primary),
        buildButton(
            context: context,
            text: '%',
            color: Theme.of(context).colorScheme.primary),
        buildButton(
            context: context,
            text: '/',
            color: Theme.of(context).colorScheme.primary),
        buildButton(context: context, text: '7'),
        buildButton(context: context, text: '8'),
        buildButton(context: context, text: '9'),
        buildButton(
            context: context,
            text: 'x',
            color: Theme.of(context).colorScheme.primary),
        buildButton(context: context, text: '4'),
        buildButton(context: context, text: '5'),
        buildButton(context: context, text: '6'),
        buildButton(
            context: context,
            text: '-',
            color: Theme.of(context).colorScheme.primary),
        buildButton(context: context, text: '1'),
        buildButton(context: context, text: '2'),
        buildButton(context: context, text: '3'),
        buildButton(
            context: context,
            text: '+',
            color: Theme.of(context).colorScheme.primary),
        buildButton(context: context, text: 'C', color: Colors.red),
        buildButton(context: context, text: '0'),
        buildButton(context: context, text: '.'),
        buildButton(
            context: context,
            text: '=',
            color: Theme.of(context).colorScheme.primary),
      ],
    );
  }
}
