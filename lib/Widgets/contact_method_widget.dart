import 'package:assessment1/models/form_model.dart';
import 'package:flutter/material.dart';

class ContactMethod extends StatefulWidget {
  const ContactMethod({
    super.key,
    required this.form,
  });

  final FormClass form;

  @override
  State<ContactMethod> createState() => CcontactMethodState();
}

class CcontactMethodState extends State<ContactMethod> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Preferred Contact Method",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          DropdownMenu(
            width: 388,
            initialSelection: widget.form.contactMethod,
            onSelected: (value) {
              setState(() {
                widget.form.contactMethod = value!;
              });
            },
            dropdownMenuEntries: contactMethodList
                .map((e) => DropdownMenuEntry(
                      value: e,
                      label: e.toString(),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
