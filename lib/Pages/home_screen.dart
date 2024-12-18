import 'package:assessment1/Widgets/button_row_widget.dart';
import 'package:assessment1/Widgets/contact_method_widget.dart';
import 'package:assessment1/Widgets/label_textfield_widget.dart';
import 'package:assessment1/Widgets/radio_buttons_list.dart';
import 'package:assessment1/Widgets/subscribe_newsletter_widget.dart';
import 'package:assessment1/Widgets/user_data_widget.dart';
import 'package:assessment1/models/form_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String gender = "";
  String name = "";
  String email = "";
  String message = "";
  late FormClass formClass = FormClass(name, email, gender);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void updateGender(String gender) {
    setState(() {
      this.gender = gender;
      formClass.gender = gender;
    });
  }

  bool validform = false;
  void submit() {
    validform = validateForm();
  }

  bool validateForm() {
    if (nameController.text.isNotEmpty && emailController.text.isNotEmpty) {
      if (emailController.text.contains("@") &&
          emailController.text.contains(".")) {
        if (formClass.gender.isNotEmpty) {
          setState(() {
            formClass.name = nameController.text;
            formClass.email = emailController.text;
            message = "";
          });
          return true;
        } else {
          setState(() {
            message = "Please select a gender";
          });
          return false;
        }
      } else {
        setState(() {
          message = "Please enter a valid email address";
        });
        return false;
      }
    } else {
      setState(() {
        message = "Please fill out all fields";
      });
      return false;
    }
  }

  void clear() {
    setState(() {
      nameController.clear();
      emailController.clear();
      formClass.gender = "";
      formClass.contactMethod = "Email";
      formClass.isSubscribedToNewsLetter = false;
      message = "";
      validform = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "A Simple Contact Form",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              LabelTextField(
                type: "Name",
                controller: nameController,
              ),
              LabelTextField(
                type: "Email",
                controller: emailController,
              ),
              const SizedBox(height: 12),
              RadioButtonsList(
                form: formClass,
                updateGender: (value) {
                  setState(() {
                    updateGender(value);
                  });
                },
              ),
              ContactMethod(form: formClass),
              SubscribeToNewsLetter(form: formClass),
              const SizedBox(height: 12),
              ButtonRow(
                submit: submit,
                clear: clear,
              ),
              const SizedBox(height: 12),
              !validform
                  ? Text(
                      message,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    )
                  : UserData(formClass: formClass),
            ],
          ),
        ),
      ),
    );
  }
}
