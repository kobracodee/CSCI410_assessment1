import 'package:assessment1/models/form_model.dart';
import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({
    super.key,
    required this.formClass,
  });

  final FormClass formClass;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Submitted Information:",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          "Name: ${formClass.name}",
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "Email: ${formClass.email}",
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "Gender: ${formClass.gender}",
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "Preferred Contact Method: ${formClass.contactMethod}",
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "Subscribed to Newsletter: ${formClass.isSubscribedToNewsLetter ? "Yes" : "No"}",
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
