import 'package:flutter/material.dart';

class LabelTextField extends StatefulWidget {
  const LabelTextField({
    super.key,
    required this.type,
    required this.controller,
  });

  final String type;
  final TextEditingController controller;

  @override
  State<LabelTextField> createState() => _LabelTextFieldState();
}

class _LabelTextFieldState extends State<LabelTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.type,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              label: Text("Enter your ${widget.type}"),
              border: const OutlineInputBorder(
                gapPadding: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
