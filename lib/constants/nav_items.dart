import '../../app/scroll_sections.dart';
import '../../models/nav_item.dart';

class NavItems {
  static final items = [
    NavItem(title: "Home", key: ScrollSections.heroKey),
    NavItem(title: "About", key: ScrollSections.aboutKey),
    NavItem(title: "Skills", key: ScrollSections.skillsKey),
    NavItem(title: "Projects", key: ScrollSections.projectsKey),
    NavItem(title: "Experience", key: ScrollSections.experienceKey),
    NavItem(title: "Education", key: ScrollSections.educationKey),
    NavItem(title: "Contact", key: ScrollSections.contactKey),
  ];
}
