import 'package:assessment1/models/form_model.dart';
import 'package:flutter/material.dart';

class SubscribeToNewsLetter extends StatefulWidget {
  const SubscribeToNewsLetter({
    super.key,
    required this.form,
  });

  final FormClass form;

  @override
  State<SubscribeToNewsLetter> createState() => _SubscribeToNewsLetterState();
}

class _SubscribeToNewsLetterState extends State<SubscribeToNewsLetter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: widget.form.isSubscribedToNewsLetter,
          onChanged: (bool? newValue) {
            setState(() {
              widget.form.isSubscribedToNewsLetter = newValue!;
            });
          },
        ),
        const Text(
          "Subscribe to Newsletter",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
