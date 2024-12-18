import 'package:assessment1/models/form_model.dart';
import 'package:flutter/material.dart';

class RadioButtonsList extends StatefulWidget {
  const RadioButtonsList({
    super.key,
    required this.form,
    required this.updateGender,
  });

  final FormClass form;
  final Function(String) updateGender;

  @override
  State<RadioButtonsList> createState() => _RadioButtonsListState();
}

class _RadioButtonsListState extends State<RadioButtonsList> {
  String _gender = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Gender",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Radio(
                value: "Male",
                groupValue: widget.form.gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as String;
                    widget.updateGender(_gender);
                  });
                },
              ),
              const Text(
                "Male",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Radio(
                value: "Female",
                groupValue: widget.form.gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as String;
                    widget.updateGender(_gender);
                  });
                },
              ),
              const Text(
                "Female",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Radio(
                value: "Others",
                groupValue: widget.form.gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as String;
                    widget.updateGender(_gender);
                  });
                },
              ),
              const Text(
                "Others",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
