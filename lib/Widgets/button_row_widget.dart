import 'package:flutter/material.dart';

class ButtonRow extends StatefulWidget {
  const ButtonRow({
    super.key,
    required this.submit,
    required this.clear,
  });

  final Function() submit;
  final Function() clear;

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: widget.submit,
          icon: const Icon(
            Icons.check,
            size: 30,
          ),
          label: const Text(
            "Submit",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        ElevatedButton.icon(
          onPressed: widget.clear,
          icon: const Icon(
            Icons.clear,
            size: 30,
          ),
          label: const Text(
            "Clear",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
