import 'package:flutter/material.dart';

import '../../models/contact_item.dart';

class ContactData {
  static const items = [
    ContactItem(
      icon: Icons.email_outlined,
      title: "Email",
      value: "sohelrana.diucse@gmail.com",
    ),
    ContactItem(
      icon: Icons.phone_outlined,
      title: "Phone",
      value: "+880 1740084587",
    ),
    ContactItem(
      icon: Icons.location_on_outlined,
      title: "Location",
      value: "Dhaka, Bangladesh",
    ),
  ];
}
