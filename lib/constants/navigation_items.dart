class NavigationItem {
  final String title;

  const NavigationItem(this.title);
}

class NavigationItems {
  static const items = [
    NavigationItem("About"),
    NavigationItem("Skills"),
    NavigationItem("Projects"),
    NavigationItem("Experience"),
    NavigationItem("Contact"),
  ];
}
