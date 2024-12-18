class FormClass {
  String name;
  String email;
  String gender = "";
  String contactMethod = contactMethodList.first;
  bool isSubscribedToNewsLetter = false;

  FormClass(
    this.name,
    this.email,
    this.gender,
  );
}

List<String> contactMethodList = [
  "Email",
  "Phone",
  "SMS",
];
